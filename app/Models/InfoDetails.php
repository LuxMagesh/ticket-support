<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PHPUnit\Framework\TestCase;

class InfoDetails extends Model
{
    use HasFactory;
    protected $fillable = ['name','surname','email','city','gender','mobile','interest'];
}
