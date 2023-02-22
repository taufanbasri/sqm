<?php

namespace App\Http\Controllers;

use App\Http\Resources\LeadsCollection;
use App\Http\Resources\LeadsResource;
use App\Models\Leads;
use App\Services\LeadsService;
use Illuminate\Http\Request;

class LeadsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $allLeads = Leads::all();

        return new LeadsCollection($allLeads);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, LeadsService $leadsService)
    {
        $leads = $leadsService->store($request);

        return response()->json([
            'message' => 'Leads has been submitted successfully!',
            'data' => new LeadsResource($leads)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
