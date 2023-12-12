<?php

namespace App\Models\Internal;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PivotMrpMOPending extends Model
{
    use HasFactory;
    protected $connection = 'mysql_local';
    protected $table = 'pivot_mrp_mopending';
    protected $primaryKey = 'MoNo';
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
        'note',
        'fetch_date',
    ];
}
