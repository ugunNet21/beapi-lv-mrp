<?php

use App\Http\Controllers\BpbController;
use App\Http\Controllers\Micro\BisPcRFQController;
use App\Http\Controllers\Micro\BisPcRFQDetailController;
use App\Http\Controllers\MOPendingController;
use App\Http\Controllers\PivotBarangDatangController;
use App\Http\Controllers\PivotDailyStockController;
use App\Http\Controllers\PivotKonsolidasiController;
use App\Http\Controllers\PivotMrpBpbController;
use App\Http\Controllers\PivotMrpMoPendingController;
use App\Http\Controllers\PivotMrpSlaController;
use App\Http\Controllers\PivotReplacingController;
use App\Http\Controllers\SLAController;
use App\Models\PivotDailyStock;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// lempar ke odoo
Route::group([], function () {
    Route::apiResource('getmrBpbMicro', BpbController::class);
    Route::apiResource('getMopendingMicro', MopendingController::class);
    Route::apiResource('getSlaMicro', SLAController::class);
    Route::apiResource('getListRFQMicro', BisPcRFQController::class);
    Route::apiResource('getListRFQDetailMicro', BisPcRFQDetailController::class);
});
