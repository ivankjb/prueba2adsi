<?php

namespace App\Http\Controllers;
use App\Models\Sale;
use Illuminate\Http\Request;


class EmployeeController extends Controller
{
    //
    public function sale(){
      
        $sale=Sale::all();
        return view('mainstart',['sale'=>$sale]);
    }


}
