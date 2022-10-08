<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\Department;
use App\Models\Subject;
use App\Models\SubjectMark;
use App\Models\Student;
use App\Models\TeacherSubject;
use Illuminate\Http\Request;
use App\Rules\IsTeacherSubjectExists;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class StudentExam extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_title = 'Students Exams';
        $student_exams = SubjectMark::all();

        $context = [
            'student_exams' => $student_exams,
            'page_title' => $page_title
        ];
        return view('student_exams/index', $context);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Add New Teacher Subject';
        
        $departments = Department::all();
        $subjects = Subject::all();
        $batches = Batch::all();
        $student_exam_types = Array("fresher", "improver", "failure");

        $context = [
            'page_title' => $page_title,
            'departments' => $departments,
            'subjects' => $subjects,
            'batches' => $batches,
            'student_exam_types' => $student_exam_types,
        ];
        return view('student_exams/create', $context);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /// validation start
        $max_year = date("Y");
        $rules = [
            'roll_no' => ['required', 'exists:students,roll_no'],
            'year' => ['required', "integer", "between:2017,$max_year"],
            'student_exam_type' => ['required', 'in:fresher,improver,failure'],
            'subject_id' => ['required', 'exists:subjects,id', new IsTeacherSubjectExists($request->input('year'), $request->input('batch_id'))],
            'batch_id' => ['required', 'exists:batches,id'],
        ];
        
        $validator = Validator::make($request->all(), $rules, $messages = [
            'subject_id.required' => 'The Subject field is required.',
            'batch_id.required' => 'The Batch field is required.',
            'subject_id.exists' => 'The selected Subject does not exists.',
            'batch_id.exists' => 'The selected Batch does not exists.',
            'roll_no.required' => 'The Roll No field is required.',
            'student_exam_type.required' => 'The Type field is required.',
            'roll_no.exists' => 'No Student exists with provided Roll No.',
        ]);

        if ($validator->fails()) {
            return redirect('student_exams/create')->withErrors($validator)->withInput();
        }
        // validation end

        // get the student
        $student = Student::where("roll_no", '=', $request->input('roll_no'))->get()->first();

        // get the teacher_subject
        $teacher_subject = TeacherSubject::where([["year", "=", $request->input('year')], ["batch_id", "=", $request->input('batch_id')], ["subject_id", "=", $request->input('subject_id')]])->get()->first();

        // check if the subject marks already there for this student, than throw validation error
        if(SubjectMark::where([['student_id', '=', $student->id], ['teacher_subjects_id', '=', $teacher_subject->id]])->exists())
            throw ValidationException::withMessages(['roll_no' => "The Student is already registered in the selected subject's exam."]);        

        // set default types
        $is_fresher = false;
        $is_improver = false;
        $is_failure = false;
        // determine the type
        if($request->input('student_exam_type') == 'fresher') {
            $is_fresher = true;
        } 
        else if($request->input('student_exam_type') == 'improver') {
            $is_improver = true;
        }
        else if($request->input('student_exam_type') == 'improver') {
            $is_failure = true;
        }
    

        SubjectMark::create([
            'student_id' => $student->id,
            'teacher_subjects_id' => $teacher_subject->id,
            'mid_marks' => null,
            'sessional_marks' => null,
            'practical_marks' => null,
            'final_marks' => null,
            'locked' => false,
            'is_fresher' => $is_fresher,
            'is_improver' => $is_improver,
            'is_failure' => $is_failure,
        ]);

        return redirect('/teachers_subjects');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_title = "Edit Student Exam";
        $student_exam = SubjectMark::where('id', '=', $id)->first();
        $departments = Department::all();
        $subjects = Subject::all();
        $batches = Batch::all();
        $student_exam_types = Array("fresher", "improver", "failure");
        // get the current student exam type
        if($student_exam->is_fresher){
            $current_exam_type = "fresher";
        }
        else if($student_exam->is_improver){
            $current_exam_type = "improver";
        }
        else{
            $current_exam_type = "failure";
        }

       
        $context = [
            'page_title' => $page_title,
            'student_exam' => $student_exam,
            'departments' => $departments,
            'subjects' => $subjects,
            'batches' => $batches,
            'student_exam_types' => $student_exam_types,
            'current_exam_type' => $current_exam_type,
        ];

        return view('student_exams/edit', $context);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        /// validation start
        $max_year = date("Y");
        $rules = [
            'roll_no' => ['required', 'exists:students,roll_no'],
            'year' => ['required', "integer", "between:2017,$max_year"],
            'student_exam_type' => ['required', 'in:fresher,improver,failure'],
            'subject_id' => ['required', 'exists:subjects,id', new IsTeacherSubjectExists($request->input('year'), $request->input('batch_id'))],
            'batch_id' => ['required', 'exists:batches,id'],
        ];
        
        $validator = Validator::make($request->all(), $rules, $messages = [
            'subject_id.required' => 'The Subject field is required.',
            'batch_id.required' => 'The Batch field is required.',
            'subject_id.exists' => 'The selected Subject does not exists.',
            'batch_id.exists' => 'The selected Batch does not exists.',
            'roll_no.required' => 'The Roll No field is required.',
            'student_exam_type.required' => 'The Type field is required.',
            'roll_no.exists' => 'No Student exists with provided Roll No.',
        ]);

        if ($validator->fails()) {
            return redirect("student_exams/create")->withErrors($validator)->withInput();
        }
        // validation end

        // get the student
        $student = Student::where("roll_no", '=', $request->input('roll_no'))->get()->first();

        // get the teacher_subject
        $teacher_subject = TeacherSubject::where([["year", "=", $request->input('year')], ["batch_id", "=", $request->input('batch_id')], ["subject_id", "=", $request->input('subject_id')]])->get()->first();

        // check if the subject marks already there for this student, than throw validation error
        if(SubjectMark::where([['student_id', '=', $student->id], ['teacher_subjects_id', '=', $teacher_subject->id], ['id', '!=', $id]])->exists())
            throw ValidationException::withMessages(['roll_no' => "The Student is already registered in the selected subject's exam."]);        

        // set default types
        $is_fresher = false;
        $is_improver = false;
        $is_failure = false;
        // determine the type
        if($request->input('student_exam_type') == 'fresher') {
            $is_fresher = true;
        } 
        else if($request->input('student_exam_type') == 'improver') {
            $is_improver = true;
        }
        else if($request->input('student_exam_type') == 'improver') {
            $is_failure = true;
        }
    

        SubjectMark::where('id', '=', $id)
        ->update([
            'student_id' => $student->id,
            'teacher_subjects_id' => $teacher_subject->id,
            'mid_marks' => null,
            'sessional_marks' => null,
            'practical_marks' => null,
            'final_marks' => null,
            'locked' => false,
            'is_fresher' => $is_fresher,
            'is_improver' => $is_improver,
            'is_failure' => $is_failure,
        ]);

        return redirect('/student_exams');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        SubjectMark::where('id', '=', $id)->first()->delete();

        return redirect('/student_exams');
    }
}
