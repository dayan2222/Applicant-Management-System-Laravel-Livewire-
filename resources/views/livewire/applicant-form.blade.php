
<x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
        {{ __('Applicant') }}
    </h2>
</x-slot>
<div class="max-w-2xl mx-auto p-6 bg-white dark:bg-gray-800 shadow-md rounded-lg">
    @if(session()->has('success'))
        <div class="bg-green-100 dark:bg-green-900 text-green-700 dark:text-green-200 p-2 rounded mb-4">
            {{ session('success') }}
        </div>
    @endif

    <form wire:submit.prevent="save" class="space-y-4">
        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Full Name</label>
            <input type="text" wire:model="full_name"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            @error('full_name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">S/o, D/o, W/o</label>
            <input type="text" wire:model="father_name"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Date of Birth</label>
            <input type="date" wire:model="dob"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">CNIC</label>
            <input type="text" wire:model="cnic" placeholder="12345-1234567-1"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            @error('cnic') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Domicile</label>
            <input type="text" wire:model="domicile"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Nationality</label>
            <input type="text" wire:model="nationality"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block font-medium text-gray-700 dark:text-gray-300">Telephone</label>
                <input type="text" wire:model="telephone"
                    class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            </div>
            <div>
                <label class="block font-medium text-gray-700 dark:text-gray-300">Cell</label>
                <input type="text" wire:model="cell"
                    class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            </div>
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Present Address</label>
            <textarea wire:model="present_address"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100"></textarea>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block font-medium text-gray-700 dark:text-gray-300">District</label>
                <input type="text" wire:model="district"
                    class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            </div>
            <div>
                <label class="block font-medium text-gray-700 dark:text-gray-300">Province</label>
                <input type="text" wire:model="province"
                    class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
            </div>
        </div>

        <div>
            <label class="block font-medium text-gray-700 dark:text-gray-300">Permanent Address</label>
            <textarea wire:model="permanent_address"
                class="w-full border rounded p-2 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100"></textarea>
        </div>

        <button type="submit"
            class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded transition">
            Save Applicant
        </button>
    </form>
</div>
