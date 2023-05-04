<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Artisan;
use App\Helpers\ResponseFormatter;

class ConfigController extends Controller
{
    public function clearRoute()
    {
        Artisan::call('route:clear');
        $token = "succes";
        return ResponseFormatter::success($token, 'Clear Route');
    }
}
