<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Tests\TestCase;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\InfoDetails>
 */
class InfoDetailsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->test(25),
            'surname' => $this->faker->test(25),
            'mobile' => $this->faker->test(25),
            'email' => $this->faker->email(),
            'email_verified_at' => $this->faker->test(25),
            'gender' => $this->faker->gender(),
            'interests' => $this->faker->itest(20),
            'city' => $this->faker->test(25),
        ];
    }
}
