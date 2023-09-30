<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TicketController;

route::get('/', [TicketController::class, 'redirect ']);
route::get('/redirect', [TicketController::class, 'redirect'])->name('redirect');;
route::get('/tickets', [TicketController::class, 'index'])->name('index');
route::get('/tickets/{ticket}', [TicketController::class, 'show'])->name('show');
route::post('/tickets/{id}', [TicketController::class, 'update'])->name('update');
route::get('/create', [TicketController::class, 'create'])->name('create');
route::post('/create', [TicketController::class, 'add'])->name('add');
route::get('/complex', [TicketController::class, 'complex'])->name('complex');
route::get('/tickets/delete/{ticket}', [TicketController::class, 'delete'])->name('delete');
route::post('/tickets', [TicketController::class, 'filter'])->name('filter');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});



