<?php

namespace App\Livewire\Ui;

use Livewire\Component;

class ApplicantModal extends Component
{
    public $isOpen = false;
    public $applicant;
    protected $listeners = [
        'openModal' => 'open', 
        'closeModal' => 'close',
        'openEdit' => 'openEdit'
    ];

    public function open()
    {
        $this->isOpen = true;
    }

    public function close()
    {
        $this->isOpen = false;
    }

    public function openEdit($applicant) {
        $this->isOpen = true;
        $this->applicant = $applicant;
    }

    public function render()
    {
        return view('livewire.ui.applicant-modal', [
            'full_name' => $this->applicant
        ]);
    }
}