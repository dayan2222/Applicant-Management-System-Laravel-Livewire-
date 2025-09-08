<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
    protected $fillable = [
        'full_name',
        'father_name',
        'dob',
        'cnic',
        'domicile',
        'nationality',
        'telephone',
        'cell',
        'present_address',
        'district',
        'province',
        'permanent_address',
    ];

    protected $casts = [
        'dob' => 'date',
    ];
}
