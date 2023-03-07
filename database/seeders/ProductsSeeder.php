<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $prd = new Product();
        $prd->description = 'Gomitas Trululu';
        $prd->price = '2,400' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Choclitos';
        $prd->price = '1,800' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Panelada';
        $prd->price = '1,100' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Muuu';
        $prd->price = '500' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Pan alineado';
        $prd->price = '3,000' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Papel higienico duo';
        $prd->price = '2,500' ;
        $prd->save();

        $prd = new Product();
        $prd->description = 'Gomitas Trolli';
        $prd->price = '1,300' ;
        $prd->save();
    }
}
