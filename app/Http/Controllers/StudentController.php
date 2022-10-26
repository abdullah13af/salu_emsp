<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\Department;
use App\Models\Batch;
use App\Models\SubjectMark;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_title = 'Students';
        $students = Student::all();

        $context = [
            'students' => $students,
            'page_title' => $page_title
        ];
        return view('students/index', $context);
    }

    /**
     * Display a listing of the resource that matches me.
     *
     * @return \Illuminate\Http\Response
     */
    public function my_results()
    {
        $page_title = 'My Results';

        $semesters_results = array();
        $const_theory_total_marks = 100;
        $const_practical_total_marks = 50;
        
        // get all subject_marks
        $subject_marks = SubjectMark::where([["student_id", "=", Auth::user()->student->id], ["is_overrided", '=', false]])->get();      


        // iterate over all subject_marks, and store the results in semester_results array
        foreach ($subject_marks as $key => $value) {
            // get the semester
            $semester = $value->teacher_subjects->subject->semester;
            // get the subject_type
            $subject_type = $value->teacher_subjects->subject->subject_type;
            // check if the semester already exists in semester_results
            if(array_key_exists($semester, $semesters_results)){
                // if subject is theory, than add theory marks
                if($subject_type == "theory"){
                    $semesters_results[$semester] = array("theory_obtained_marks" => $semesters_results[$semester]["theory_obtained_marks"] + $value->mid_marks + $value->sessional_marks + $value->final_marks,
                                                          "practical_obtained_marks" => $semesters_results[$semester]["practical_obtained_marks"],
                                                          "theory_total_marks" => $semesters_results[$semester]["theory_total_marks"] + $const_theory_total_marks,
                                                          "practical_total_marks" => $semesters_results[$semester]["practical_total_marks"]);
                }
                // otherwise, subject is practical so add practical marks
                else{
                    $semesters_results[$semester] = array("practical_obtained_marks" => $semesters_results[$semester]["practical_obtained_marks"] + $value->practical_marks,
                                                          "theory_obtained_marks" => $semesters_results[$semester]["theory_obtained_marks"],
                                                          "practical_total_marks" => $semesters_results[$semester]["practical_total_marks"] + $const_practical_total_marks,
                                                          "theory_total_marks" => $semesters_results[$semester]["theory_total_marks"]);
                }
            }
            // otherwise, create a new entry for semester_results
            else{
                // if subject is theory, than add theory marks
                if($subject_type == "theory"){
                    $semesters_results[$semester] = array("theory_obtained_marks" => $value->mid_marks + $value->sessional_marks + $value->final_marks,
                                                          "practical_obtained_marks" => 0,
                                                          "theory_total_marks" => $const_theory_total_marks,
                                                          "practical_total_marks" => 0);
                }
                // otherwise, subject is practical so add practical marks
                else{
                    $semesters_results[$semester] = array("practical_obtained_marks" => $value->practical_marks,
                                                          "theory_obtained_marks" => 0,
                                                          "theory_total_marks" => 0,
                                                          "practical_total_marks" => $const_practical_total_marks);
                }
            }
        }

        // array of all 8 semesters
        $semesters = Array("1", "2", "3", "4", "5", "6", "7", "8");
        // iterate over all semesters and create empty data with N/A as value if the data for that semester is not exists after above step.
        foreach ($semesters as $key => $value) {
            // if this semester is not in the semester_results, than create N/A results for this semester
            if(!array_key_exists($value, $semesters_results)){
                $semesters_results[$value] = array("practical_obtained_marks" => "N/A",
                                                    "theory_obtained_marks" => "N/A",
                                                    "theory_total_marks" =>  "N/A",
                                                    "practical_total_marks" => "N/A");
            }
        }

        // sort the semster_results by semster[key] in aces order
        ksort($semesters_results);
        
        // dd($semesters_results);

        $context = [
            'page_title' => $page_title,
            'semesters_results' => $semesters_results
        ];
        return view('students/my_results', $context);
    }


    /**
     * Display a listing of the resource that matches me.
     *
     * @return \Illuminate\Http\Response
     */
    public function semester_result($semester_id)
    {
        $page_title = 'Semester - '. $semester_id .' Result';

        // get all subject_marks
        // $subject_marks = SubjectMark::where([["student_id", "=", Auth::user()->student->id], ["is_overrided", '=', false]])->get();

        $subject_marks = SubjectMark::with('teacher_subjects')
                    ->where([["student_id", "=", Auth::user()->student->id], ["is_overrided", '=', false]])
                    ->whereHas('teacher_subjects', function (Builder $query) use ($semester_id) {
                        return $query->with('subject')
                                     ->whereHas('subject', function(Builder $query) use ($semester_id) {
                                        return $query->where('semester', '=', $semester_id);
                                     });
                        })
                    ->get();
        
        $context = [
            'page_title' => $page_title,
            'subject_marks' => $subject_marks
        ];
        return view('students/semester_result', $context);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Add New Student';
        
        $departments = Department::all();
        $batches = Batch::all();
        $genders = Array('male', 'female', 'other');

        $context = [
            'page_title' => $page_title,
            'departments' => $departments,
            'batches' => $batches,
            'genders' => $genders,
        ];
        return view('students/create', $context);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // validation start
        $rules = [
            'roll_no' => ['required'],
            'name' => ['required'],
            'father_name' => ['required'],
            'surname' => ['required'],
            'religion' => ['required'],
            'nationality' => ['required'],
            'residential_address' => ['required'],
            'gender' => ['required', "in:male,female,other"],
            'cnic_no' => ['required', 'unique:students,cnic_no'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', ""],
            'department_id' => ['required', 'exists:departments,id'],
            'batch_id' => ['required', 'exists:batches,id'],
        ];
        
        $validator = Validator::make($request->all(), $rules, $messages = [
            'name.required' => 'The Student Name field is required.',
            'roll_no.required' => 'The Roll No field is required.',
            'father_name.required' => "The Father's Name field is required.",
            'surname.required' => 'The Surname field is required.',
            'religion.required' => 'The Religion field is required.',
            'nationality.required' => 'The Nationality field is required.',
            'residential_address.required' => 'The Residential Address field is required.',
            'gender.required' => 'The Gender field is required.',
            'cnic_no.required' => 'The CNIC No field is required.',            
            'cnic_no.unique' => 'This CNIC No is already registered.',            
            'email.required' => 'The Email field is required.',
            'email.unique' => 'This Email is already registered.',
            'password.required' => 'The Password field is required.',
            'department_id.required' => 'The Department field is required.',
            'department_id.exists' => 'The selected Department does not exists.',
            'batch_id.required' => 'The Batch field is required.',
            'batch_id.exists' => 'The selected Batch does not exists.',
        ]);

        if ($validator->fails()) {
            return redirect('students/create')->withErrors($validator)->withInput();
        }
        // validation end

        $user = User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
        ]);

        Student::create([
            'roll_no' => $request->input('roll_no'),
            'father_name' => $request->input('father_name'),
            'surname' => $request->input('surname'),
            'religion' => $request->input('religion'),
            'nationality' => $request->input('nationality'),
            'residential_address' => $request->input('residential_address'),
            'gender' => $request->input('gender'),
            'cnic_no' => $request->input('cnic_no'),            
            'user_id' => $user->id,
            'department_id' => $request->input('department_id'),
            'batch_id' => $request->input('batch_id'),
        ]);

        return redirect('/students');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_title = "Edit Student";
        $student = Student::where('id', '=', $id)->first();
        $departments = Department::all();
        $batches = Batch::all();
        $genders = Array('male', 'female', 'other');

       
        $context = [
            'page_title' => $page_title,
            'student' => $student,
            'departments' => $departments,
            'batches' => $batches,
            'genders' => $genders
        ];

        return view('students/edit', $context);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $student = Student::where('id', '=', $id)->first();

        // validation start
        $rules = [
            'roll_no' => ['required'],
            'name' => ['required'],
            'father_name' => ['required'],
            'surname' => ['required'],
            'email' => ['required', 'email', 'unique:users,email,'.$student->user->id],
            'password' => ['required', ""],
            'religion' => ['required'],
            'nationality' => ['required'],
            'residential_address' => ['required'],
            'gender' => ['required', "in:male,female,other"],
            'cnic_no' => ['required', 'unique:students,cnic_no,'.$student->id],
            'department_id' => ['required', 'exists:departments,id'],
            'batch_id' => ['required', 'exists:batches,id'],
        ];
        
        $validator = Validator::make($request->all(), $rules, $messages = [
            'name.required' => 'The Student Name field is required.',
            'roll_no.required' => 'The Roll No field is required.',
            'father_name.required' => "The Father's Name field is required.",
            'surname.required' => 'The Surname field is required.',
            'religion.required' => 'The Religion field is required.',
            'nationality.required' => 'The Nationality field is required.',
            'residential_address.required' => 'The Residential Address field is required.',
            'gender.required' => 'The Gender field is required.',
            'cnic_no.required' => 'The CNIC No field is required.',            
            'cnic_no.unique' => 'This CNIC No is already registered.',            
            'email.required' => 'The Email field is required.',
            'email.unique' => 'This Email is already registered.',
            'password.required' => 'The Password field is required.',
            'department_id.required' => 'The Department field is required.',
            'department_id.exists' => 'The selected Department does not exists.',
            'batch_id.required' => 'The Batch field is required.',
            'batch_id.exists' => 'The selected Batch does not exists.',
        ]);

        if ($validator->fails()) {
            return redirect('students/create')->withErrors($validator)->withInput();
        }
        // validation end

        $user = User::where('id', '=', $student->user->id)
        ->update([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
        ]);

        $student
        ->update([
            'roll_no' => $request->input('roll_no'),
            'father_name' => $request->input('father_name'),
            'surname' => $request->input('surname'),
            'religion' => $request->input('religion'),
            'nationality' => $request->input('nationality'),
            'residential_address' => $request->input('residential_address'),
            'gender' => $request->input('gender'),
            'cnic_no' => $request->input('cnic_no'),            
            'department_id' => $request->input('department_id'),
            'batch_id' => $request->input('batch_id'),
        ]);

    
        return redirect('/students');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $student = Student::where('id', '=', $id)->first();
        $user_id = $student->user->id;
        $student->delete();
        $user = User::where('id', '=', $user_id)->first()->delete();
        
        return redirect('/students');
    }
}
