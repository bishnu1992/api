<?php
namespace App\Http\Middleware;

use Closure;

class CustomeAuth
{
	
	public function handle($request, Closure $next)
	{
		try {
			$auth = true;
			if ($auth) {
				$response = $next[$request];
			}else{
				$response = [
					'status' => false,
					'code' => 401,
					'message' => 'Auth Failed',
				];

			}
		} catch (Exception $e) {
			$response = [
				'status' => false,
				'code' => 500,
				'message' => 'Internal Error',
			];
		}
		return json_encode($response);
	}
}