<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('applicants', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->string('father_name')->nullable();
            $table->date('dob');
            $table->string('cnic', 15)->unique();
            $table->string('domicile')->nullable();
            $table->string('nationality')->nullable();
            $table->string('telephone')->nullable();
            $table->string('cell')->nullable();
            $table->text('present_address')->nullable();
            $table->string('district')->nullable();
            $table->string('province')->nullable();
            $table->text('permanent_address')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('applicants');
    }
};
