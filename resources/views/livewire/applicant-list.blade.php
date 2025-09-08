<div class="max-w-5xl mx-auto p-6 bg-white dark:bg-gray-800 shadow-md rounded-lg">

    <div class="flex justify-end">
        <a href="{{ route('applicants.create') }}"
            class="bg-blue-500 dark:bg-blue-700 text-gray-700 dark:text-gray-200 px-4 py-2 rounded hover:bg-blue-600 dark:hover:bg-blue-800">
            Add Applicant
        </a>
    </div>

    <div class="flex justify-between items-center mb-4">
        <h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200">Applicant List</h2>
        
         
        <input type="text" wire:model.debounce.500ms="search"
            placeholder="Search"
            class="border rounded px-3 py-2 w-1/3 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100">
    </div>
    

    <table class="w-full border-collapse border border-gray-300 dark:border-gray-600">
        <thead>
            <tr class="bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-200 text-left">
                <th class="border px-3 py-2">#</th>
                <th class="border px-3 py-2">Full Name</th>
                <th class="border px-3 py-2">Father Name</th>
                <th class="border px-3 py-2">CNIC</th>
                <th class="border px-3 py-2">District</th>
                <th class="border px-3 py-2">Province</th>
                <th class="border px-3 py-2">Cell</th>
                <th class="border px-3 py-2">Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($applicants as $index => $applicant)
                <tr class="bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-200 text-left">
                    <td class="border px-3 py-2">{{ $applicants->firstItem() + $index }}</td>
                    <td class="border px-3 py-2">{{ $applicant->full_name }}</td>
                    <td class="border px-3 py-2">{{ $applicant->father_name }}</td>
                    <td class="border px-3 py-2">{{ $applicant->cnic }}</td>
                    <td class="border px-3 py-2">{{ $applicant->district }}</td>
                    <td class="border px-3 py-2">{{ $applicant->province }}</td>
                    <td class="border px-3 py-2">{{ $applicant->cell }}</td>
                    <td class="border px-3 py-2 space-x-2">
                        <button wire:click="edit({{ $applicant->id }})"
                            class="bg-yellow-500  px-2 py-1 rounded text-sm">Edit</button>
                        <button wire:click="delete({{ $applicant->id }})"
                            class="bg-red-500  px-2 py-1 rounded text-sm"
                            onclick="return confirm('Are you sure?')">Delete</button>

                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="8"
                        class="border px-3 py-2 text-center text-gray-500 dark:text-gray-400">
                        No applicants found.
                    </td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <div class="mt-4">
        {{ $applicants->links() }}
    </div>
</div>
