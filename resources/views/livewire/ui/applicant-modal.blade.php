<div>
    @if($isOpen)

        <div class="fixed inset-0 bg-black bg-opacity-70 flex items-center justify-center z-50 transition-opacity duration-300 ease-in-out opacity-100">
            <div class="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-lg w-full max-w-2xl relative transition-transform transform duration-300 ease-in-out scale-100 hover:scale-105">
                <button wire:click="close" class="absolute top-2 right-2 text-gray-500 dark:text-gray-300 hover:text-gray-800 focus:outline-none">
                    ✖
                </button>
                <livewire:applicant-form :applicant="$applicant" />
            </div>
        </div> 

    @endif
</div>
