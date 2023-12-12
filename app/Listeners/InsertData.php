<?php

namespace App\Listeners;

use App\Events\DataRetrieved;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\DB;

class InsertData
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
     * @param  \App\Events\DataRetrieved  $event
     * @return void
     */
    public function handle(DataRetrieved $event)
    {
        $data = $event->data;
        var_dump($data);

        // foreach ($data as $item) {
        //     $existingData = DB::connection('mysql_local')
        //         ->table('pivot_mrp_bpb')
        //         ->where('MoNo', $item->MoNo)
        //         ->first();
        //     if (!$existingData) {
        //         DB::connection('mysql_local')->table('pivot_mrp_bpb')->insert((array)$item);
        //     }
        // }
        // DB::connection('mysql_local')->table('pivot_mrp_mopending')->insert($data);
    }
}
