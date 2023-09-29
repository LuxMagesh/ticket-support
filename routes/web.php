<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TicketController;

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

route::get('/redirect', [TicketController::class, 'redirect']);
route::get('/tickets', [TicketController::class, 'index'])->name('tickets');
route::get('/tickets/{ticket}', [TicketController::class, 'show'])->name('show');
route::post('/tickets/{ticket}', [TicketController::class, 'update'])->name('update');
route::get('/create', [TicketController::class, 'create'])->name('create');
route::post('/create', [TicketController::class, 'add'])->name('add');
route::get('/tickets/delete/{ticket}', [TicketController::class, 'delete'])->name('delete');
route::post('/tickets', [TicketController::class, 'filter'])->name('filter');


