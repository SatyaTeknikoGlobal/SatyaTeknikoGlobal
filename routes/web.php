<?php
namespace App\Http\Controllers;


use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Helpers\CustomHelper;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return view('welcome');
});

//Route::any('/', 'HomeController@index');
///////////////////////////////////Merchants/////////////////////////////////////////


////////////////////////////////////////ADMIN//////////////////////////////////////////

Route::match(['get', 'post'], '/user-logout', 'Auth\LoginController@logout');


$ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();

Route::match(['get', 'post'], 'admin/login', 'Admin\LoginController@index');



// Admin
Route::group(['namespace' => 'Admin', 'prefix' => $ADMIN_ROUTE_NAME, 'as' => $ADMIN_ROUTE_NAME.'.', 'middleware' => ['authadmin']], function() {




    Route::get('firebase','FirebaseController@index');







    Route::get('/logout', 'LoginController@logout')->name('logout');

    Route::match(['get','post'],'/profile', 'HomeController@profile')->name('profile');
    
    Route::match(['get','post'],'/setting', 'HomeController@setting')->name('setting');
    Route::match(['get','post'],'/upload', 'HomeController@upload')->name('upload');

    Route::match(['get','post'],'/change-password', 'HomeController@change_password')->name('change_password');

    Route::get('/', 'HomeController@index')->name('home');


    Route::match(['get','post'],'get_sub_cat', 'HomeController@get_sub_cat')->name('get_sub_cat');



    Route::group(['prefix' => 'settings', 'as' => 'settings', 'middleware' => ['allowedmodule:settings'] ], function() {

        Route::match(['get', 'post'], '/{setting_id?}', 'SettingsController@index')->name('.index');
        //Route::any('/{setting_id}', 'SettingsController@index')->name('.index');
    });




////Influencers
    Route::group(['prefix' => 'influencers', 'as' => 'influencers' , 'middleware' => ['allowedmodule:influencers'] ], function() {
        Route::get('/', 'InfluencersController@index')->name('.index');
        
        Route::get('/get_influencer', 'InfluencersController@get_influencer')->name('.get_influencer');

        Route::match(['get','post'],'/change_user_status', 'InfluencersController@change_user_status')->name('.change_user_status');

        Route::match(['get', 'post'], 'add', 'InfluencersController@add')->name('.add');
        Route::match(['get', 'post'], 'edit/{id}', 'InfluencersController@add')->name('.edit');
        Route::post('ajax_delete_image', 'InfluencersController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'InfluencersController@delete')->name('.delete');
        
        Route::match(['get','post'],'gallery/{id}', 'InfluencersController@gallery')->name('.gallery');

        Route::match(['get','post'],'gallerydelete/{id}', 'InfluencersController@gallerydelete')->name('.gallerydelete');
    });
    





////Gallery
    Route::group(['prefix' => 'galleries', 'as' => 'galleries' , 'middleware' => ['allowedmodule:galleries'] ], function() {
        Route::match(['get','post'],'/', 'GalleryController@index')->name('.index');
        Route::match(['get','post'],'delete/{id}', 'GalleryController@delete')->name('.delete');

    });
    

////Events
    Route::group(['prefix' => 'events', 'as' => 'events' , 'middleware' => ['allowedmodule:events'] ], function() {
        Route::get('/', 'EventController@index')->name('.index');
        Route::match(['get', 'post'], 'add', 'EventController@add')->name('.add');
        
        Route::get('/get_events', 'EventController@get_events')->name('.get_events');
        Route::match(['get', 'post'], 'edit/{id}', 'EventController@add')->name('.edit');
        Route::post('ajax_delete_image', 'EventController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'EventController@delete')->name('.delete');
        Route::match(['get','post'],'gallery/{id}', 'EventController@gallery')->name('.gallery');
        Route::match(['get','post'],'chats/{id}', 'EventController@chats')->name('.chats');
        Route::match(['get','post'],'questions', 'EventController@questionList')->name('.questions');
        Route::match(['get','post'],'question_add', 'EventController@add_question')->name('.question_add');
        Route::match(['get', 'post'], 'edit_question/{id}', 'EventController@add_question')->name('.edit_question');
        Route::match(['get', 'post'], 'user/{id}', 'EventController@event_user_list')->name('.user');
        Route::match(['get', 'post'], 'subscription/{event_id}', 'EventController@subscription')->name('.subscription');
        Route::match(['get', 'post'], 'get-joined-user', 'EventController@joined_user_list')->name('.get_joined_user');
        Route::match(['get', 'post'], 'subscribed-user', 'EventController@subscribed_user')->name('.subscribed_user');
        Route::match(['get', 'post'], 'get_sub_users', 'EventController@get_sub_users')->name('.get_sub_users');
        Route::match(['get', 'post'], 'get_message', 'EventController@get_message')->name('.get_message');
        Route::match(['get', 'post'], 'save_message', 'EventController@save_message')->name('.save_message');
        Route::match(['get', 'post'], 'question_answer/{id}', 'EventController@question_answer')->name('.question_answer');
        Route::match(['get', 'post'], 'answered_user_list', 'EventController@answered_user_list')->name('.answered_user_list');
        Route::match(['get', 'post'], 'question_ask', 'EventController@question_ask')->name('.question_ask');
        Route::get('/get_questions', 'EventController@get_questions')->name('.get_questions');
        Route::match(['get','post'],'gallerydelete/{id}', 'EventController@gallerydelete')->name('.gallerydelete');

        
        Route::match(['get','post'],'analysis/{id}', 'EventController@analysis')->name('.analysis');






    });



  ////Banner
    Route::group(['prefix' => 'banners', 'as' => 'banners' , 'middleware' => ['allowedmodule:banners'] ], function() {
        Route::match(['get','post'],'/', 'BannerController@index')->name('.index');
        Route::match(['get', 'post'], 'add', 'BannerController@add')->name('.add');
        Route::match(['get', 'post'], 'edit/{id}', 'BannerController@add')->name('.edit');
        Route::post('ajax_delete_image', 'BannerController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'BannerController@delete')->name('.delete');

    });




  ////Transactions
    Route::group(['prefix' => 'transactions', 'as' => 'transactions' , 'middleware' => ['allowedmodule:transactions'] ], function() {
        Route::match(['get','post'],'/', 'TransactionController@index')->name('.index');
        Route::match(['get', 'post'], 'add', 'TransactionController@add')->name('.add');
        Route::match(['get', 'post'], 'get_transactions', 'TransactionController@get_transactions')->name('.get_transactions');

        



        Route::match(['get', 'post'], 'edit/{id}', 'TransactionController@add')->name('.edit');
        Route::post('ajax_delete_image', 'TransactionController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'TransactionController@delete')->name('.delete');

    });



  ////notifications
    Route::group(['prefix' => 'notifications', 'as' => 'notifications' , 'middleware' => ['allowedmodule:notifications'] ], function() {
        Route::match(['get','post'],'/', 'NotificationController@index')->name('.index');
        Route::match(['get', 'post'], 'add', 'NotificationController@add')->name('.add');
        Route::match(['get', 'post'], 'get_transactions', 'NotificationController@get_transactions')->name('.get_transactions');
        Route::match(['get', 'post'], 'edit/{id}', 'NotificationController@add')->name('.edit');
        Route::post('ajax_delete_image', 'NotificationController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'NotificationController@delete')->name('.delete');

    });








////Subscription
    Route::group(['prefix' => 'subscription', 'as' => 'subscription' , 'middleware' => ['allowedmodule:subscription'] ], function() {
        Route::get('/', 'SubscriptionController@index')->name('.index');
        
        Route::get('/list', 'SubscriptionController@list')->name('.list');


        Route::get('/users_list', 'SubscriptionController@users_list')->name('.users_list');
        Route::get('/get_user', 'SubscriptionController@get_user')->name('.get_user');

        Route::match(['get','post'],'/assign_user', 'SubscriptionController@assign_user')->name('.assign_user');


        Route::match(['get','post'],'/assign/{sub_id}', 'SubscriptionController@assign')->name('.assign');


        Route::match(['get','post'],'/change_status', 'SubscriptionController@change_status')->name('.change_status');


        Route::match(['get', 'post'], 'add', 'SubscriptionController@add')->name('.add');
        Route::match(['get', 'post'], 'edit/{id}', 'SubscriptionController@add')->name('.edit');
        Route::post('ajax_delete_image', 'SubscriptionController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'SubscriptionController@delete')->name('.delete');
        
        Route::match(['get','post'],'gallery/{id}', 'SubscriptionController@gallery')->name('.gallery');

        Route::match(['get','post'],'gallerydelete/{id}', 'SubscriptionController@gallerydelete')->name('.gallerydelete');
    });
    





////Users
    Route::group(['prefix' => 'users', 'as' => 'users' , 'middleware' => ['allowedmodule:users'] ], function() {
        Route::get('/', 'UsersController@index')->name('.index');
        
        Route::get('/get_users', 'UsersController@get_users')->name('.get_users');


        Route::match(['get','post'],'/change_status', 'UsersController@change_status')->name('.change_status');


        Route::match(['get', 'post'], 'add', 'UsersController@add')->name('.add');
        Route::match(['get', 'post'], 'edit/{id}', 'UsersController@add')->name('.edit');
        Route::post('ajax_delete_image', 'UsersController@ajax_delete_image')->name('.ajax_delete_image');
        Route::match(['get','post'],'delete/{id}', 'UsersController@delete')->name('.delete');
        
        Route::match(['get','post'],'gallery/{id}', 'UsersController@gallery')->name('.gallery');

        Route::match(['get','post'],'gallerydelete/{id}', 'UsersController@gallerydelete')->name('.gallerydelete');
    });
    




    
});

