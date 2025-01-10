<?php

namespace App\Http\Controllers;

use App\Models\Notes;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;



class HistoryController extends Controller
{
    public function history(Request $request)
    {
        $notesQuery = Notes::query();
        
        $notes = $notesQuery->paginate(1000);

        // if($request->get('export') == 'pdf') {
        //     $pdf = Pdf::loadView('pdf.history', compact('notes'));
        //     return $pdf->stream('Data History.pdf');
        //     } 
        
        return view('cart.history',[
            'title' => 'History',
            'active' => 'history',
            'notes' => $notes
        ]);
    }

    public function filter(Request $request){
        $start_date = $request->start_date;
        $end_date = $request->end_date;


        $notes = Notes::whereDate('created_at','>=',$start_date)
                        ->whereDate('created_at','<=',$end_date)
                        ->paginate(50);
        
        return view('cart.history', [
            'title' => 'History',
            'active' => 'history',
            'notes' => $notes
        ]);
    }

    public function halamancetak(){
        $notesQuery = Notes::query();
        $notes = $notesQuery->paginate(1000);
            
        return view('cart.export', [
            'title' => 'halamancetak',
            'active' => 'halamancetak',
            'notes' => $notes
        ]);
    }

    public function cetak(Request $request){
        $start_date = $request->start_date;
        $end_date = $request->end_date;

        $notes = Notes::whereDate('created_at','>=',$start_date)
                    ->whereDate('created_at','<=',$end_date)
                    ->paginate(50);
                        
        $pdf = Pdf::loadView('pdf.history', compact('notes'));
        return $pdf->stream('Data History.pdf');
            
        return view('cart.export', [
            'title' => 'cetak',
            'active' => 'cetak',
            'notes' => $notes
        ]);
    }



    // public function cetakfilter(Request $request){
    //     $start_date = $request->start_date;
    //     $end_date = $request->end_date;

    //     $notes = Notes::whereDate('created_at','>=',$start_date)
    //                     ->whereDate('created_at','<=',$end_date)
    //                     ->paginate(50);

    //     if($request->get('export') == 'pdf') {
    //         $pdf = Pdf::loadView('pdf.history', ['notes' => $notes]);
    //         return $pdf->download('Data History.pdf');
    //         } 
    // }

    // public function cetakpertanggal(Request $request){
    //     $notesQuery = Notes::query();
    //     $notes = $notesQuery->paginate(10);

    //     return view('pdf.cetakhistorypertanggal', [
    //         'title' => 'cetak',
    //         'active' => 'cetakpertanggal',
    //         'notes' => $notes
    //     ]);
    // }

    // public function cetakdatapertanggal(Request $request){

    //     $start_date = $request->start_date;
    //     $end_date = $request->end_date;

    //     $notes = Notes::whereDate('created_at','>=',$start_date)
    //                     ->whereDate('created_at','<=',$end_date)
    //                     ->paginate(50);

    //     dd();

        // return view('pdf.cetakhistorypertanggal', [
        //     'title' => 'cetak',
        //     'active' => 'cetakpertanggal',
        //     'notes' => $notes
        // ]);
    // }
    
}