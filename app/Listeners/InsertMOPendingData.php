<?php

namespace App\Listeners;

use App\Events\MOPendingDataRetrieved;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\DB;

class InsertMOPendingData
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\MOPendingDataRetrieved  $event
     * @return void
     */
    public function handle(MOPendingDataRetrieved $event)
    {
        //insert data
        $data = $event->data;
        // foreach ($data as $item) {
        //     $existingData = DB::connection('mysql_local')
        //         ->table('pivot_mrp_mopending')
        //         ->where('ISS_NO', $item->ISS_NO)
        //         ->first();
        //     if (!$existingData) {
        //         DB::connection('mysql_local')->table('pivot_mrp_mopending')->insert((array)$item);
        //     }
        // }
        DB::connection('mysql_local')->table('pivot_mrp_mopending')->insert($data);
    }
}
