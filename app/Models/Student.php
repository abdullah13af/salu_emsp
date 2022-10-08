<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'department_id', 'batch_id', 'roll_no' ,'father_name' ,'surname' ,'religion' ,'nationality' ,'residential_address' ,'gender' ,'cnic_no' ,];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function department() {
        return $this->belongsTo(Department::class);
    }

    public function batch() {
        return $this->belongsTo(Batch::class);
    }

}
