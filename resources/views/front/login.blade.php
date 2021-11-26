
@include('front.common.header')
<div class="container">
    <div class="pm-content">
        <div class="rehub-login-popup">
            <div class="re_title_inmodal">Log In</div>
              @include('snippets.errors')
            @include('snippets.flash')
            <form id="" action="" method="post">
                {{csrf_field()}}
                <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>Email/Phone</label>
                        <input class="re-form-input required" name="username" type="text" autocomplete="off">
                         @include('snippets.errors_first', ['param' => 'username'])

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <div class="re-form-group mb20">
                        <label for="rehub_user_pass">Password</label>
                        <input class="re-form-input required" name="password" id="password" type="password"  autocomplete="off">
                        @include('snippets.errors_first', ['param' => 'password'])

                        <a href="#" class="alignright">Lost Password?</a>

                    </div>
                </div>

            </div>


            <div class="re-form-group mb20">
                <label for="rehub_remember"><input name="rehub_remember" id="rehub_remember" type="checkbox" value="forever">
                Remember me</label>
            </div>                      
            <div class="re-form-group mb20">
                <button class="wpsm-button rehub_main_btn" type="submit">Login</button>
            </div>
        </form>
        <div class="rehub-errors"></div>
        <div class="">Don't have an account? 
            <a href="{{route('home.register')}}"><span class="color_link" >Sign Up</span> </a>                    
        </div>
    </div>
</div>

</div>

@include('front.common.footer')
