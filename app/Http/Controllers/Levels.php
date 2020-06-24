<?php
namespace App\Http\Controllers;

use App\DifficultyLevel as DL;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;


class Levels extends Controller
{
	
	public function list()
	{
		try {
			$list = DL::where('status',1)->get()->toArray();
			return $list;
		} catch (Exception $e) {
			
		}
	}
	public function store(Request $request)
	{
		try {
			$insert_data = Input::all();
			DL::create($insert_data);
		} catch (Exception $e) {
			
		}
	}
}