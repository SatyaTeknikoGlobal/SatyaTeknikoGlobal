
@include('front.common.header')
<div class="container">
    <div class="pm-content">
        <div class="rehub-login-popup">
            <div class="re_title_inmodal">Signup/Register</div>
              @include('snippets.errors')
            @include('snippets.flash')
            <form id="" action="" method="post">
                {{csrf_field()}}
                <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>Name</label>
                        <input class="re-form-input " name="name" type="text" autocomplete="off" value="{{old('name')}}">
                         @include('snippets.errors_first', ['param' => 'name'])

                    </div>
                </div>
            </div>
            <div id="map"></div>
             <input type="hidden" name="latitude" value="" id="latitude">
            <input type="hidden" name="longitude" value="" id="longitude">


             <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>Email</label>
                        <input class="re-form-input " name="email" type="text" autocomplete="off" value="{{old('email')}}">
                         @include('snippets.errors_first', ['param' => 'email'])

                    </div>
                </div>
            </div>


             <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>Phone</label>
                        <input class="re-form-input " name="phone" type="text" autocomplete="off" value="{{old('phone')}}">
                         @include('snippets.errors_first', ['param' => 'phone'])

                    </div>
                </div>
            </div>
              <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>Address</label>
                         <input id="pac-input"class="form-control" name="address" type="text" placeholder="Search Adddress" value="{{old('address')}}"/>
                         @include('snippets.errors_first', ['param' => 'address'])

                    </div>
                </div>
            </div>


              <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>State</label>
                        <select class="form-control" name="state" id="state_id"> 
                            <option value="" disabled selected>Select Your State</option>
                            <?php if(!empty($states)){
                                foreach($states as $state){
                                ?>
                                <option value="{{$state->id}}">{{$state->name}}</option>
                            <?php }}?>
                        </select>
                         @include('snippets.errors_first', ['param' => 'state'])

                    </div>
                </div>
            </div>


             <div class="row">
                    <div class="form-group col-md-6">
                     <div class="re-form-group mb20">
                        <label>State</label>
                        <select class="form-control" name="city" id="city_id"> 
                            <option value="" disabled selected>Select Your State</option>
                        </select>
                         @include('snippets.errors_first', ['param' => 'city'])

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <div class="re-form-group mb20">
                        <label for="rehub_user_pass">Password</label>
                        <input class="re-form-input required" name="password" id="password" type="password"  autocomplete="off">
                        @include('snippets.errors_first', ['param' => 'password'])


                    </div>
                </div>

            </div>


             <div class="row">
                <div class="form-group col-md-6">
                    <div class="re-form-group mb20">
                        <label for="rehub_user_pass">Referal Code</label>
                        <input class="re-form-input required" name="referalcode" id="referalcode" type="text"  autocomplete="off" value="{{old('referalcode')}}">
                        @include('snippets.errors_first', ['param' => 'referalcode'])


                    </div>
                </div>

            </div>







                  
            <div class="re-form-group mb20">
                <input type="hidden" name="action" value="rehub_login_member_popup_function">
                <button class="wpsm-button rehub_main_btn" type="submit">Register</button>
            </div>
        </form>
        <div class="rehub-errors"></div>
        <div class="">Already have an account? 
            <a href="{{route('home.login')}}"><span class="color_link" >Sign In</span> </a>                    
        </div>
    </div>
</div>

</div>

@include('front.common.footer')
<script type="text/javascript">
  $("#state_id").change(function(){
    var state_id = $(this).val();
    var _token = '{{ csrf_token() }}';
    $.ajax({
      url: "{{ url('/get_city') }}",
      type: "POST",
      data: {state_id:state_id},
      dataType:"HTML",
      headers:{'X-CSRF-TOKEN': _token},
      cache: false,
      success: function(resp){
       
        $("#city_id").html(resp);

      }
    });
  });
</script>


<script type="text/javascript">
  $("#pac-input").keyup(function(){
    var address = $('#pac-input').val();
    var _token = '{{ csrf_token() }}';

    $.ajax({
      url: "{{ route('get_lat_long') }}",
      type: "POST",
      data: {address:address},
      dataType:"JSON",
      headers:{'X-CSRF-TOKEN': _token},
      cache: false,
      
      success: function(resp){
        $('#latitude').val(resp.latitude);
        $('#longitude').val(resp.longitude);

      }
    });
  });
</script>