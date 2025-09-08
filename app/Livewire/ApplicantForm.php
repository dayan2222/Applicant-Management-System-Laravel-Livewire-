<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Applicant;

class ApplicantForm extends Component
{
    public $applicantId;
    public $full_name, $father_name, $dob, $cnic, $domicile, $nationality;
    public $telephone, $cell, $present_address, $district, $province, $permanent_address;

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

        // adjust CNIC unique rule for updates
        $this->rules['cnic'] = 'required|string|max:20|unique:applicants,cnic,' . $this->applicantId;
    }

    public function mount($applicant = null)
    {
        if ($applicant) {
            $this->applicantId = $applicant->id;
            $this->fill($applicant->toArray());

            // update CNIC rule to ignore this applicant
            $this->rules['cnic'] = 'required|string|size:15|unique:applicants,cnic,' . $applicant->id;
        }
    }

    public function save()
    {
        $this->validate();

        Applicant::updateOrCreate(
            ['id' => $this->applicantId],
            $this->only([
                'full_name', 'father_name', 'dob', 'cnic', 'domicile', 'nationality',
                'telephone', 'cell', 'present_address', 'district', 'province', 'permanent_address'
            ])
        );

        $this->reset(); // clear form
        session()->flash('success', 'Applicant saved successfully!');
        $this->dispatch('applicantUpdated'); // notify list
    }

    public function render()
    {
        return view('livewire.applicant-form')->layout('layouts.app');
    }
}
