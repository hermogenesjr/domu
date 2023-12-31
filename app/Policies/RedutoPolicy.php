<?php

namespace App\Policies;

use App\Models\Reduto;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class RedutoPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Reduto $reduto)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Reduto $reduto)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Reduto $reduto)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, Reduto $reduto)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, Reduto $reduto)
    {
        //
        return $user->hasPermissionTo('reduto_read');
    }
}
