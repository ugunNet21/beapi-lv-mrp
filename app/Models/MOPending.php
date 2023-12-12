<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MOPending extends Model
{
    use HasFactory;
    protected $connection = 'mysql_server';
    protected $table = 'MOPending';
    protected $primaryKey = 'ISS_NO';
    protected $fillable = [
        'MoNo',
        'MoDate',
        'MoType',
        'MoGroup',
        'CustomerCode',
        'Customer',
        'OrderStatus',
        'ProductCode',
        'ProductDesc',
        'OrderQty',
        'ShipQty',
        'PendingQty',
        'SoNo',
        'Remark',
    ];
}
