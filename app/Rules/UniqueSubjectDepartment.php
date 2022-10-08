<?php

namespace App\Rules;

use App\Models\Subject;
use Illuminate\Contracts\Validation\Rule;

class UniqueSubjectDepartment implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    protected $department_id;
    protected $subject_type;
    protected $update_id;
    public function __construct($department_id, $subject_type, $update_id)
    {
        $this->department_id = $department_id;
        $this->subject_type = $subject_type;
        $this->update_id = $update_id;
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
        if($this->update_id == null){
            if(Subject::where([['name', '=', $value], ['department_id', '=', $this->department_id], ['subject_type', '=', $this->subject_type]])->exists())
                return false;
        }
        else{
            if(Subject::where([['name', '=', $value], ['department_id', '=', $this->department_id], ['subject_type', '=', $this->subject_type], ['id', '!=', $this->update_id]])->exists())
                return false;
        }
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The Subject is already registered in the selected Department.';
    }
}
