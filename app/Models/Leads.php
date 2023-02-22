<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Leads extends Model
{
    use HasFactory;

    const NEW = 'new';
    const BOOKING = 'booking';
    const DROP = 'drop';

    protected $table = 'leads';
    protected $guarded = [];
    protected $casts = [
        'status' => 'string'
    ];

    /**
     * Get the sales that owns the Leads
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function sales(): BelongsTo
    {
        return $this->belongsTo(User::class, 'sales_id');
    }
}
