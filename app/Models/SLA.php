<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SLA extends Model
{
    use HasFactory;
    protected $connection = 'mysql_server';
    protected $table = 'SLA';
    protected $fillable = [
        'productOwner',
        'ProductionUnit',
        'ProductCode',
        'ProductName',
        'UOMCodeDefault',
        'ProductCategory',
        'MonthlyForecastQuantity',
        'MORequest',
        'MODelivery',
        'MOPendingQuantity',
        'WIPBalanceQty',
        'QuarantinedBalanceQuantity',
        'QuarantinedHoldBalanceQuantity',
        'QuarantinedLastLotNo',
        'ReleasedBalanceQuantity',
        'ReleasedBalanceHoldQuantity',
        'ReleasedBalanceAndHoldQuantity',
        'ReleasedLastLotNo',
        'TotalStockQuantity',
        'LevelTotalValuemonths',
        'ReadyStockQuantity',
        'LevelReadyValuemonths',
        'PlantGroup',
        'exeuid',
        'exetime',
    ];

    protected $casts = [
        'exetime' => 'datetime',
    ];
}
