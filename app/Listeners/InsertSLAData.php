<?php

namespace App\Listeners;

use App\Events\SLADataRetrieved;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\DB;

class InsertSLAData
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
     * @param  \App\Events\SLADataRetrieved  $event
     * @return void
     */
    public function handle(SLADataRetrieved $event)
    {
        //insert data
        $data = $event->data;
        foreach ($data as $item) {
            $existingData = DB::connection('mysql_local')
                ->table('pivot_mrp_sla')
                ->where('productOwner', $item->productOwner)
                ->first();
            if (!$existingData) {
                DB::connection('mysql_local')->table('pivot_mrp_sla')->insert((array)$item);
            }
        }
        // // DB::connection('mysql_local')->table('pivot_mrp_sla')->insert($data);
    }
}
