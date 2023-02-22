<?php

namespace App\Http\Controllers;

use App\Http\Resources\LeadsCollection;
use App\Http\Resources\LeadsResource;
use App\Http\Resources\UserCollection;
use App\Models\User;
use Illuminate\Http\Request;

class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $allSales = User::where('role', 'sales')->get();

        return new UserCollection($allSales);
    }

    public function leads($id)
    {
        $sales = User::find($id);
        $leads = $sales->leads;

        return response()->json([
            'message' => $sales->name . ' Leads',
            'data' => new LeadsCollection($leads)
        ]);
    }
}
