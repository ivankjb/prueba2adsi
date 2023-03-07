<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Worker;
use App\Models\Sale;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
  
        $this->call([CustomersSeeder::class]);
        $this->call([ProductsSeeder::class]);
        $this->call([WorkersSeeder::class]);

        Sale::factory(50)->create();
    }
}
