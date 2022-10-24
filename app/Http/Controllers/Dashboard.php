<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Student;
use App\Models\Teacher;
use App\Models\Batch;
use App\Models\Subject;
use App\Models\SubjectMark;
use App\Models\TeacherSubject;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Dashboard extends Controller
{
    public function index() {
        if(Auth::check()) {
            if(Auth::user()->teacher != null)
                return $this->teacher_dashboard();
            if(Auth::user()->student != null)
                return $this->student_dashboard();
            return $this->admin_dashboard();
        }
    }

    public function admin_dashboard() {
        $page_title = 'Admin Dashboard';
        $teachers = Teacher::all();
        $students = Student::all();
        $batches = Batch::all();
        $departments = Department::all();
        $subjects = Subject::all();
        
        $teachers_count = Teacher::all()->count();
        $students_count = Student::all()->count();
        $batches_count = Batch::all()->count();
        $departments_count = Department::all()->count();
        $subjects_count = Subject::all()->count();
        

        $context = [
            'page_title' => $page_title,
            'teachers_count' => $teachers_count,
            'students_count' => $students_count,
            'batches_count' => $batches_count,
            'departments_count' => $departments_count,
            'subjects_count' => $subjects_count,
        ];
        return view('dashboards/admin_dashboard', $context);
    }

    public function teacher_dashboard() {
        $page_title = 'Teacher Dashboard';
        $teacher_subjects = TeacherSubject::where("teacher_id", "=", Auth::user()->teacher->id);
        $teacher_subjects_count = TeacherSubject::where("teacher_id", "=", Auth::user()->teacher->id)->count();

        $context = [
            'page_title' => $page_title,
            'teacher_subjects' => $teacher_subjects,
            'teacher_subjects_count' => $teacher_subjects_count,
        ];
        return view('dashboards/teacher_dashboard', $context);
    }

    public function student_dashboard() {
        $page_title = 'Student Dashboard';
        $student_subjects_count = SubjectMark::where("student_id", "=", Auth::user()->student->id)->count();

        $context = [
            'page_title' => $page_title,
            'student_subjects_count' => $student_subjects_count
        ];
        return view('dashboards/student_dashboard', $context);
    }
}
