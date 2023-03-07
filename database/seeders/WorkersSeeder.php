<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Worker;

class WorkersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $wk = new Worker();
        $wk->last_names = 'Guarin Sanchez';
        $wk->names = 'Laura Valentina';
        $wk->dateofbirth = '2005-01-21';
        $wk->basesalary='8,500,000';
        $wk->maritalstatus='Soltero';
        $wk->save();

        $wk = new Worker();
        $wk->last_names = 'Martinez Mantilla';
        $wk->names = 'Yerli Tatiana';
        $wk->dateofbirth = '2005-07-07';
        $wk->basesalary='10,500,000';
        $wk->maritalstatus='Soltero';
        $wk->save();


        $wk = new Worker();
        $wk->last_names = 'Jaramillo Berrio';
        $wk->names = 'Ivan Camilo';
        $wk->dateofbirth = '2004-07-12';
        $wk->basesalary='9,000,000';
        $wk->maritalstatus='Casado';
        $wk->save();


        $wk = new Worker();
        $wk->last_names = 'Avendaño Gomez';
        $wk->names = 'Maria Ximena';
        $wk->dateofbirth = '2004-04-18';
        $wk->basesalary='18,000,000';
        $wk->maritalstatus='Casado';
        $wk->save();
    }
}
