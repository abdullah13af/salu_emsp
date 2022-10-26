<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BatchController;
use App\Http\Controllers\Dashboard;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentExam;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\SubjectMarkController;
use App\Http\Controllers\TeacherSubjectController;
use App\Models\Department;
use App\Models\Subject;
use App\Models\User;
use App\Models\Teacher;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

require __DIR__.'/auth.php';


// this group contains all the routes for only authenticated users
Route::group(['middleware' => 'auth' ], function() {

    // dashboards [dashboard will dertermin the type of user i.e. admin, teacher, or studnet]
    Route::get('/', function () {
        return redirect('/dashboard');
    });

    // get subjects of a specific department
    Route::get('get_subjects/{id}', function ($id) {
        $subjects = Subject::where('department_id', '=', $id)->get();
        return response()->json($subjects);
    });

    // general resources routes 
    // [NOTE: General routes must be defined after the extra routes]
    Route::resource('/dashboard', Dashboard::class);
});

// this group contains all the routes for only authenticated teacher users
Route::group(['middleware' => 'auth:teacher' ], function() {

    // my subject route to show subjects of a specific teacher
    Route::get('teachers/my_subjects', 'App\Http\Controllers\TeacherController@my_subjects');
    
    Route::get('subjects_marks/{id}', [
        'as' => 'subjects_marks.index',
        'uses' => 'App\Http\Controllers\SubjectMarkController@index'
    ]);

    // general resources routes 
    // [NOTE: General routes must be defined after the extra routes]
    // get all the general resource routes of subjects_marks except the index route, because we already replaced the index route with subjects_marks 
    Route::resource('/subjects_marks', SubjectMarkController::class, ['except' => 'index']);
});


// this group contains all the routes for only authenticated student users
Route::group(['middleware' => 'auth:student' ], function() {

    // my_results route to show result of all semester of a specific auth student
    Route::get('students/my_results', 'App\Http\Controllers\StudentController@my_results');
    // semester_result route to show result of auth student of a specific semester
    Route::get('students/semester_result/{id}', 'App\Http\Controllers\StudentController@semester_result');
});

// this group contains all the routes for only authenticated admin users
Route::group(['middleware' => 'auth:admin' ], function() {

    // general resources routes 
    // [NOTE: General routes must be defined after the extra routes]
    Route::resource('/batches', BatchController::class);
    Route::resource('/departments', DepartmentController::class);
    Route::resource('/teachers', TeacherController::class);
    Route::resource('/students', StudentController::class);
    Route::resource('/subjects', SubjectController::class);
    Route::resource('/teachers_subjects', TeacherSubjectController::class);
    Route::resource('/student_exams', StudentExam::class);
});

// Route::get('/dashboard', function () {
//     if(Auth::check()) {
//         if(Auth::user()->teacher != null)
//             return view('index', ['page_title' => 'Home', 'user_type' => 'Teacher']);
//         if(Auth::user()->student != null)
//             return view('index', ['page_title' => 'Home', 'user_type' => 'Student']);

//         return view('admin_dashboard', ['page_title' => 'Home', 'user_type' => 'Admin']);
//     }
//     return view('auth.login');
// });
// // teachers depenedent dropdown start
// Route::get('get_teachers/{id}', function ($id) {
//     $teachers = DB::table('users')
//                 ->join('teachers', 'users.id', 'teachers.user_id')
//                 ->select('teachers.id', 'users.name')
//                 ->where('teachers.department_id', '=', $id)
//                 ->get();
//     return response()->json($teachers);
// });
// // teachers depenedent dropdown end
// subjects depenedent dropdown start