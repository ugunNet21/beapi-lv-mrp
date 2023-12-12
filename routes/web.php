<?php

use App\Http\Controllers\BpbController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Micro\BisPcRFQController;
use App\Http\Controllers\Micro\BisPcRFQDetailController;
use App\Http\Controllers\MOPendingController;
use App\Http\Controllers\PcPurchaseReqsController;
use App\Http\Controllers\PcPurchaseRequestDetailController;
use App\Http\Controllers\SLAController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index']);

// Internal Micro
Route::group([], function () {
    Route::apiResource('getmrBpbMicro', BpbController::class);
    Route::apiResource('getMopendingMicro', MopendingController::class);
    Route::apiResource('getSlaMicro', SLAController::class);
    Route::apiResource('getListRFQMicro', BisPcRFQController::class);
    Route::apiResource('getListRFQDetailMicro', BisPcRFQDetailController::class);
});
// Route::post('/getListRFQMicro/{id}', [BisPcRFQController::class, 'store']);

// eksternal
Route::group([], function () {
    Route::apiResource('getmrBpb', BpbController::class);
    Route::apiResource('getMopending', MopendingController::class);
    Route::apiResource('getSla', SLAController::class);
    Route::apiResource('getListRFQ', PcPurchaseReqsController::class);
    Route::apiResource('getListRFQDetail', PcPurchaseRequestDetailController::class);
});
