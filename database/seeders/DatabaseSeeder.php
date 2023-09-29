<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(20)->create();
        \App\Models\Ticket::factory(20)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
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
