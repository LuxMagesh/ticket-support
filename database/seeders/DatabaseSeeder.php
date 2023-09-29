<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Personal_Details;
use App\Models\Details_Info;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
  
        // Personal_Info::factory()->count(50)->create();
        // $this->call(class: InfoDetailsSeeder::class);
        \App\Models\Ticket::factory()->create();
        \App\Models\InfoDetails::factory()->create();

        // \App\Models\Personal_Info::factory(50)->create([
        //     'name' => $this->faker->name(),
        //     'surname' => $this->faker->name(),
        //     'mobile' => $this->faker->mobile(),
        //     'email' => $this->faker->email(),
        //     'email_verified_at' => $this->faker->email_verified_at(),
        //     'gender' => $this->faker->gender(),
        //     'interests' => $this->faker->interests(),
        //     'city' => $this->faker->city(),
        // ]);

         // Fake data for today
         Ticket::factory(6)->create([
            'created_at' => Carbon::today(),
        ]);

        // Fake data for yesterday
        Ticket::factory(6)->create([
            'created_at' => Carbon::yesterday(),
        ]);

        // Fake data for this week
        Ticket::factory(6)->create([
                    'created_at' => Carbon::now()->startOfWeek(),
                ])->each(function ($post) {
                    $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 6));
                    $post->save();
                });

        // Fake data for last week
        Ticket::factory(6)->create([
                    'created_at' => Carbon::now()->subWeek()->startOfWeek(),
                ])->each(function ($post) {
                    $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 6));
                    $post->save();
                });  
                
        // Fake data for this month
        Ticket::factory(6)->create([
            'created_at' => Carbon::now()->startOfMonth(),
        ])->each(function ($post) {
            $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 30));
            $post->save();
        });

       // Fake data for last month
       Ticket::factory(6)->create([
                    'created_at' => Carbon::now()->subMonth()->startOfMonth(),
                ])->each(function ($post) {
                    $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 30));
                    $post->save();
                });

        // Fake data for this year
        Ticket::factory(6)->create([
                    'created_at' => Carbon::now()->startOfYear(),
                ])->each(function ($post) {
                    $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 365));
                    $post->save();
                });

        // Fake data for last year
        Ticket::factory(6)->create([
                    'created_at' => Carbon::now()->subYear()->startOfYear(),
                ])->each(function ($post) {
                    $post->created_at = $post->created_at->addMinutes(rand(1, 1440 * 365));
                    $post->save();
            });        

    }
}
