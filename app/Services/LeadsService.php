<?php

namespace App\Services;

use App\Models\Leads;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LeadsService
{
    public function store(Request $request): Leads
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $data = $request->all();

        $users = User::where('role', 'sales')->get();
        $sales_leads = [];

        foreach ($users as $sales) {
            $sales_leads[$sales->id] = $sales->leads->count();
        }

        $min_leads = min($sales_leads);

        $assignedSalesId = array_search($min_leads, $sales_leads);

        $data['sales_id'] = $assignedSalesId;

        $leads = Leads::create($data);

        return $leads;
    }
}
