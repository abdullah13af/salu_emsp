<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubjectMark extends Model
{
    use HasFactory;

    protected $fillable = ['student_id', 'teacher_subjects_id', 'mid_marks', 'sessional_marks', 'practical_marks', 'final_marks', 'locked', 'is_fresher' , 'is_improver' , 'is_failure'];

    public function student() {
        return $this->belongsTo(Student::class);
    }

    public function subject() {
        return $this->belongsTo(Subject::class);
    }

    public function teacher_subjects() {
        return $this->belongsTo(TeacherSubject::class);
    }
}
