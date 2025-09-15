<?php

namespace Database\Factories;


use App\Models\Applicant;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Applicant>
 */
class ApplicantFactory extends Factory
{
    protected $model = Applicant::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'full_name'         => $this->faker->name(),
            'father_name'       => $this->faker->name('male'),
            'dob'               => $this->faker->date('Y-m-d', '-20 years'),
            'cnic'              => $this->faker->unique()->numerify('###########'), // 13-digit CNIC
            'domicile'          => $this->faker->city(),
            'nationality'       => 'Pakistani',
            'telephone'         => $this->faker->phoneNumber(),
            'cell'              => $this->faker->phoneNumber(),
            'present_address'   => $this->faker->address(),
            'district'          => $this->faker->city(),
            'province'          => $this->faker->state(),
            'permanent_address' => $this->faker->address(),
        ];
    }
}
