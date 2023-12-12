<?php

namespace App\Jobs;

use App\Models\Internal\PivotMrpMOPending;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class ProcessMOPendingData implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    // protected $dataToInserts;
    // public function __construct($dataToInserts)
    // {
    //     $this->dataToInserts = $dataToInserts;
    // }


    /**
     * Execute the job.
     *
     * @return void
     */
    // public function handle()
    // {
    //     Log::info('Processing MOPending data job started.');

    //     // Lakukan operasi penyisipan data di sini
    //     foreach ($this->dataToInserts as $chunk) {
    //         PivotMrpMOPending::insert($chunk);
    //     }
    //     Log::info('Processing MOPending data job completed.');
    // }
}
