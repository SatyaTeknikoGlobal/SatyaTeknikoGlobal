<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserSubscription extends Model
{
    //
    protected $table = 'user_subscriptions';
    protected $guarded = ['id'];
}
