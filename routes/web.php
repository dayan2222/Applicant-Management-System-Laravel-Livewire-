<?php

use App\Livewire\ApplicantList;
use App\Livewire\ApplicantForm;
use Illuminate\Support\Facades\Route;

Route::view('/', 'welcome');

// Route::view('dashboard', 'dashboard')
//     ->middleware(['auth', 'verified'])
//     ->name('dashboard');

// Route::view('profile', 'profile')
//     ->middleware(['auth'])
//     ->name('profile');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::view('dashboard', 'dashboard')->name('dashboard');
    Route::view('profile', 'profile')->name('profile');
    Route::get('/applicants/create', ApplicantForm::class)->name('applicants.create');
    Route::get('/applicants/list', ApplicantList::class)->name('applicants-list');
    Route::get('/applicants/{id}/edit', ApplicantForm::class)->name('applicants.edit');
});


require __DIR__.'/auth.php';
