<?php
namespace App\Http\Controllers;

use App\Trainer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;


class Trainers extends Controller
{
	
	public function list()
	{
		try {
			$list = Trainer::all()->toArray();
			return $list;
		} catch (Exception $e) {
			
		}
	}
	public function store(Request $request)
	{
		try {
			$insert_data = Input::all();
			Trainer::create($insert_data);
		} catch (Exception $e) {
			
		}
	}
}