<?php

namespace App\Models\Internal;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BisPcRFQReqsDetail extends Model
{
    use HasFactory;
    protected $connection = 'mysql_local_purchase';
    protected $table = 'pc_purchase_request_detail';
    protected $primaryKey = ['No_PR'];
    // public $timestamps = false;
    public $incrementing = false;

    protected $fillable = [
        'No_PR',
        'No_Detail',
        'Kode_Barang',
        'Satuan',
        'SSL_PR',
        'Jumlah_Stok',
        'GOO',
        'Jumlah_Order',
        'Pembulatan',
        'Keterangan',
        'ID',
        'fetch_date',
    ];

    public function purchaseRequest()
    {
        return $this->belongsTo(BisPcRFQReqs::class, 'No_PR', 'No_PR');
    }
}
