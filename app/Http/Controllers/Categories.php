<?php
namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;


class Categories extends Controller
{
	
	public function list()
	{
		try {
			$list = Category::all()->toArray();
			return $list;
		} catch (Exception $e) {
			
		}
	}
	public function store(Request $request)
	{
		try {
			$insert_data = Input::all();
			Category::create($insert_data);
		} catch (Exception $e) {
			
		}
	}
}