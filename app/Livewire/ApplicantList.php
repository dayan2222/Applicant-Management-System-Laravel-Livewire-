<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Applicant;
use Livewire\WithPagination;

class ApplicantList extends Component
{
    use WithPagination;

    public $search = '';
    public $editId;

    protected $paginationTheme = 'tailwind';

    protected $listeners = ['applicantSaved' => '$refresh'];

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function edit($id)
    {
        $applicant = Applicant::findOrFail($id);
        $this->dispatch('editApplicant', applicant: $applicant->toArray())
             ->to('applicant-form');
    }

    public function delete($id)
    {
        Applicant::findOrFail($id)->delete();
        session()->flash('success', 'Applicant deleted successfully!');
        $this->resetPage();
    }

    public function render()
    {
        $applicants = Applicant::query()
            ->when($this->search, fn($q) =>
                $q->where('full_name', 'like', "%{$this->search}%")
                  ->orWhere('cnic', 'like', "%{$this->search}%")
                  ->orWhere('district', 'like', "%{$this->search}%")
            )
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        return view('livewire.applicant-list', compact('applicants'))->layout('layouts.app');
    }
}
