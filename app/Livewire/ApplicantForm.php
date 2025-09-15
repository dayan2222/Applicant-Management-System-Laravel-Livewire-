<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Applicant;
use Livewire\Attributes\On; 
use Carbon\Carbon;
use Livewire\Attributes\Layout;

// #[Layout('layouts.app')]
class ApplicantForm extends Component
{
    public $applicantId;
    public $full_name, $father_name, $dob, $cnic, $domicile, $nationality;
    public $telephone, $cell, $present_address, $district, $province, $permanent_address;
    protected $listeners = ['editApplicant' => 'editApplicantForm'];
    protected $rules = [
        'full_name' => 'required|string|max:255',
        'father_name' => 'nullable|string|max:255',
        'dob' => 'required|date',
        'cnic' => 'required|string|size:15|unique:applicants,cnic',
        'domicile' => 'nullable|string|max:255',
        'nationality' => 'nullable|string|max:255',
        'telephone' => 'nullable|string|max:20',
        'cell' => 'nullable|string|max:20',
        'present_address' => 'nullable|string',
        'district' => 'nullable|string|max:255',
        'province' => 'nullable|string|max:255',
        'permanent_address' => 'nullable|string',
    ];

    public function updated($field)
    {
        $this->validateOnly($field);
    }
    public function loadApplicant($applicant)
    {
        $this->applicantId = $applicant['id'];
        $this->fill($applicant);
        $this->rules['cnic'] = 'required|string|max:20|unique:applicants,cnic,' . $this->applicantId;
    }

    // public function loadApplicant($applicant)
    // {
    //     $this->applicantId = $applicant['id'];
    //     $this->full_name = $applicant['full_name'];
    //     $this->father_name = $applicant['father_name'];
    //     $this->dob = $applicant['dob'];
    //     $this->cnic = $applicant['cnic'];
    //     $this->domicile = $applicant['domicile'];
    //     $this->nationality = $applicant['nationality'];
    // }


    public function mount($applicant = null)
    {
        if ($applicant) {
            // dd($applicant);
            $this->applicantId = $applicant['id'];
            $this->fill($applicant);
             $this->dob = Carbon::parse($applicant['dob'])->format('Y-m-d');
            // update CNIC rule to ignore this applicant
            $this->rules['cnic'] = 'required|string|size:15|unique:applicants,cnic,' . $applicant['id'];
        }
    }

    public function save()
    {
        $rules = $this->rules;

        if ($this->applicantId) {
            $rules['cnic'] = 'required|string|size:15|unique:applicants,cnic,' . $this->applicantId;
        }

        $this->validate($rules);

        Applicant::updateOrCreate(
            ['id' => $this->applicantId],
            $this->only([
                'full_name', 'father_name', 'dob', 'cnic', 'domicile', 'nationality',
                'telephone', 'cell', 'present_address', 'district', 'province', 'permanent_address'
            ])
        );

        session()->flash('success', 'Applicant information saved successfully.');
        $this->dispatch('closeModal');
        $this->dispatch('refreshApplicants');
        $this->reset();
    }

    public function render()
    {
        return view('livewire.applicant-form');
    }
}
