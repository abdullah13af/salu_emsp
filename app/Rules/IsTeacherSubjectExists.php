<?php

namespace App\Rules;

use App\Models\Subject;
use App\Models\TeacherSubject;
use Illuminate\Contracts\Validation\Rule;

class IsTeacherSubjectExists implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    protected $year;
    protected $batch_id;
    
    public function __construct($year, $batch_id)
    {
        $this->year = $year;
        $this->batch_id = $batch_id;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        if(TeacherSubject::where([['subject_id', '=', $value], ['year', '=', $this->year], ['batch_id', '=', $this->batch_id]])->exists()){
            return true;
        }
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The Subject is not available in the selected Year for the selected Batch.';
    }
}
