<?php

namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use Stevebauman\Location\Facades\Location;
use Illuminate\Support\Carbon;

class TicketController extends Controller
{
    public function redirect(Request $request)
    {
        $query = Ticket::query();
        $tickets = Ticket::all();
        $dateFilter = $request->date_filter;

        switch($dateFilter){
            case 'today':
                $tickets->whereDate('created_at',Carbon::today());
                break;
            case 'yesterday':
                $tickets->wheredate('created_at',Carbon::yesterday());
                break;
            case 'this_week':
                $tickets->whereBetween('created_at',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                break;
            case 'last_week':
                $tickets->whereBetween('created_at',[Carbon::now()->subWeek(),Carbon::now()]);
                break;
            case 'this_month':
                $tickets->whereMonth('created_at',Carbon::now()->month);
                break;
            case 'last_month':
                $tickets->whereMonth('created_at',Carbon::now()->subMonth()->month);
                break;
            case 'this_year':
                $tickets->whereYear('created_at',Carbon::now()->year);
                break;
            case 'last_year':
                $tickets->whereYear('created_at',Carbon::now()->subYear()->year);
                break;                       
        }
            
        // $employees = $query->get();

        // return response()->view('index',compact('employees','dateFilter'));
       
        return view('tickets.index', compact('tickets','dateFilter'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = Ticket::query();
        $tickets = Ticket::all();
        $dateFilter = $request->date_filter;

        switch($dateFilter){
            case 'today':
                $query->whereDate('created_at',Carbon::today());
                break;
            case 'yesterday':
                $query->wheredate('created_at',Carbon::yesterday());
                break;
            case 'this_week':
                $query->whereBetween('created_at',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                break;
            case 'last_week':
                $query->whereBetween('created_at',[Carbon::now()->subWeek(),Carbon::now()]);
                break;
            case 'this_month':
                $query->whereMonth('created_at',Carbon::now()->month);
                break;
            case 'last_month':
                $query->whereMonth('created_at',Carbon::now()->subMonth()->month);
                break;
            case 'this_year':
                $query->whereYear('created_at',Carbon::now()->year);
                break;
            case 'last_year':
                $query->whereYear('created_at',Carbon::now()->subYear()->year);
                break;                       
        }
            
        // $employees = $query->get();

        // return response()->view('index',compact('employees','dateFilter'));
       
        return view('tickets.index', compact('tickets','dateFilter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            return view('tickets.create');
            
    }

    public function add(Request $request)
    {
        $tickets=new ticket;
        $tickets->name=$request->name;
        $tickets->email=$request->email;
        $tickets->category=$request->category;
        $tickets->summary=$request->summary;
        $tickets->description=$request->description;
        $tickets->status=$request->status;

        $UserIp= $_SERVER['REMOTE_ADDR'];
        // $UserIp= '127.0.0.1';
        $location=Location::get($UserIp);
        // $location =  '127.0.0.1';
       $loc = Location::get($location);
    //    $loc2 =var_dump($loc);
       // var_export -- nice, one-liner
        $debug_export = var_export($loc, true);

        $tickets->location=$debug_export;

        $tickets->save();

        $tickets = Ticket::all();
        return view('tickets.index', compact('tickets'));

    }

    public function filter(Request $request)
    {
       $start_date = $request->start_date;
       $end_date = $request->end_date;

       $tickets = Ticket::whereDate('created_at', '>=' ,$start_date)
       ->whereDate('created_at', '<=' ,$end_date)->get();

       return view('tickets.index', compact('tickets'));

    }

    public function delete(Ticket $ticket)
    {
            return view('tickets.delete', compact('ticket'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function show(Ticket $ticket)
    {
        return view('tickets.show', compact('ticket'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function edit(Ticket $ticket)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, Ticket $tickets)
    // {
    //         $tickets->summary = request('summary');
    //         $tickets->description = request('description');
    //         $tickets->status = request('status');
    //         $tickets->save();

    //         return view('tickets.index');
    // }

    public function update(Request $request, $id)
    {
        $tickets=ticket::find($id);
        $tickets->name=$request->name;
        $tickets->email=$request->email;
        $tickets->category=$request->category;
        $tickets->summary=$request->summary;
        $tickets->description=$request->description;
        $tickets->status=$request->status;

        $tickets->save();

        return redirect()->back()->with('message', 'Product Updated Succesfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ticket $ticket)
    {
        //
    }
}
