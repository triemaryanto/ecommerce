<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit');
        $status = $request->input('status');

        if ($id) {
            $transaction = Transaction::with(['items.product'])->find($id);
            if ($transaction) {
                return ResponseFormatter::success(
                    $transaction,
                    'Success'
                );
            } else {
                return ResponseFormatter::error(
                    null,
                    'Nothing Data',
                    404
                );
            }
        }
        $transaction = Transaction::with(['items.product'])->where('users_id', Auth::user()->id);
        if ($status) {
            $transaction->where('status', $status);
        }
        return ResponseFormatter::success(
            $transaction->paginate($limit),
            'Success'
        );
    }
}
