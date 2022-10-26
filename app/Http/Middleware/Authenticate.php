<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Illuminate\Support\Facades\Auth;


class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (!$request->expectsJson()) {
            return route('login');
        }
    }

    //this method will be triggered before your controller constructor
    public function handle($request, Closure $next, $user_type=null)
    {
        // dd($user_type);
        //check here if the user is authenticated
        if (Auth::check()) {
            // check if user_type is not null
            if($user_type != null){
                // if user_type is admin and authenticated user is also admin than allow access
                if($user_type == 'admin' && Auth::user()->teacher == null && Auth::user()->student == null){
                    return $next($request);
                }
                // if user_type is teacher and authenticated user is also teacher than allow access
                if($user_type == 'teacher' && Auth::user()->teacher != null) {
                    return $next($request);
                }
                // if user_type is student and authenticated user is also student than allow access
                if($user_type == 'student' && Auth::user()->student != null){
                    return $next($request);
                }
                // if no above condition satisfy, then redirect to dashboard
                return redirect('/dashboard');
            }
            // if user_type is null, means we don't want any specific user access
            else{
                // so just allow the access to the authenticated user
                return $next($request);
            }
        }
        return redirect()->route('login');
    }
}
