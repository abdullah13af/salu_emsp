<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubjectMarksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subject_marks', function (Blueprint $table) {
            $table->id()->unique()->autoIncrement();
            $table->unsignedBigInteger('student_id');
            $table->unsignedBigInteger('teacher_subjects_id');
            $table->foreign('student_id')->references('id')->on('students');
            $table->foreign('teacher_subjects_id')->references('id')->on('teacher_subjects');
            $table->decimal('mid_marks', 5, 2)->nullable();
            $table->decimal('sessional_marks', 5, 2)->nullable();
            $table->decimal('practical_marks', 5, 2)->nullable();
            $table->decimal('final_marks', 5, 2)->nullable();
            $table->boolean('locked');
            $table->boolean('is_fresher')->default(0);
            $table->boolean('is_improver')->default(0);
            $table->boolean('is_failure')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subject_marks');
    }
}
