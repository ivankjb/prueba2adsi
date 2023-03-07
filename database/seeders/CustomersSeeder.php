<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Customer;

class CustomersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $cus=new Customer();
        $cus->last_names='Bautista Luna';
        $cus->names='Carlos Esteban';
        $cus->business='McLaren Group';
        $cus->save();

        $cus=new Customer();
        $cus->last_names='Martinez Mantilla';
        $cus->names='Mariana';
        $cus->business='Disney';
        $cus->save();

        $cus=new Customer();
        $cus->last_names='Mantilla Gomez';
        $cus->names='Liana Consuelo';
        $cus->business='Casalimpia';
        $cus->save();

        $cus=new Customer();
        $cus->last_names='Martinez';
        $cus->names='Ricardo Andres';
        $cus->business='Alcaldia de Bogota';
        $cus->save();

    }
}
