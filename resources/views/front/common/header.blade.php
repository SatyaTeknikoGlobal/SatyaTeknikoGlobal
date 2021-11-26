<?php 
// $page = '';
// $slug = isset($vendor->slug) ? $vendor->slug :'';
// $segments_arr = request()->segments();
// $seg1 = isset($segments_arr[0]) ? $segments_arr[0] :'';
// $seg2 = isset($segments_arr[1]) ? $segments_arr[1] :'';
// $name = isset(Auth::guard('appusers')->user()->name) ? Auth::guard('appusers')->user()->name :'User';


// if($seg1 == $slug){
// 	$page = 'home';
// }if($seg2 == 'cart'){
// 	$page = 'cart';
// }

// $url = url('/').'/'.$slug;
// $imgUrl = asset('public/assets/front/images/avatars/1.jpg');
// if(!empty(Auth::guard('appusers')->user()->image)){
// $imgUrl = Auth::guard('appusers')->user()->image;
// }
?>

<!DOCTYPE html>

<html lang="en-US">

<!-- Mirrored from redeal.lookmetrics.co/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Jul 2021 08:40:14 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- feeds & pingback -->
	  <link rel="icon" href="/public/assets/web/wp-content/uploads/2020/01/logo_m_panel.png" type="image/png">

	<link rel="preload" href="/public/assets/web/wp-content/themes/rehub-theme/fonts/rhicons4133.woff2?leryx9" as="font" type="font/woff2" crossorigin><link rel="stylesheet" media="print" onload="this.onload=null;this.media='all';" id="ao_optimized_gfonts" href="https://fonts.googleapis.com/css?family=Poppins%3A700%2C400&amp;display=swap" /><link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="xmlrpc.html" />
	<link media="all" href="{{asset('public/assets/web/wp-content/cache/autoptimize/css/autoptimize_d89300e191f7c80b56ab9bac79c16727.css')}}" rel="stylesheet" /><title>Redeal test site &#8211; Rehub cashback and coupon test demo</title>
	<meta name='robots' content='max-image-preview:large' />
	<link href='https://fonts.gstatic.com/' crossorigin='anonymous' rel='preconnect' />
	<link rel="alternate" type="application/rss+xml" title="Redeal test site &raquo; Feed" href="feed/index.html" />
	<link rel="alternate" type="application/rss+xml" title="Redeal test site &raquo; Comments Feed" href="comments/feed/index.html" />




<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




	<link rel='stylesheet' id='elementor-post-1092-css'  href="{{asset('public/assets/web/wp-content/cache/autoptimize/css/autoptimize_single_1299de643376a974ae7a5bb12d10cdb3.css')}}" type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-post-331-css'  href="{{asset('public/assets/web/wp-content/cache/autoptimize/css/autoptimize_single_bc96fc8fb137939f174e7e22cfd655eb.css')}}" type='text/css' media='all' />



	<script type='text/javascript' src="/public/assets/web/wp-includes/js/jquery/jquery.min.js" id="jquery-core-js"></script>



	<link rel="https://api.w.org/" href="{{asset('public/assets/web/wp-json/index.html')}}" /><link rel="alternate" type="application/json" href="{{asset('public/assets/web/wp-json/wp/v2/pages/331.json')}}" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="xmlrpc0db0.html?rsd" />
	<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="{{asset('public/assets/web/wp-includes/wlwmanifest.xml')}}" /> 
	<meta name="generator" content="WordPress 5.7.2" />
	<link rel="canonical" href="{{url('/')}}" />
	<link rel='shortlink' href="{{url('/')}}" />
	<link rel="alternate" type="application/json+oembed" href="wp-json/oembed/1.0/embed1e0b.json?url=https%3A%2F%2Fredeal.lookmetrics.co%2F" />
	<link rel="alternate" type="text/xml+oembed" href="wp-json/oembed/1.0/embed60ae?url=https%3A%2F%2Fredeal.lookmetrics.co%2F&amp;format=xml" />


	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>





	<link rel="preload" href="/public/assets/web/wp-content/themes/rehub-theme/fonts/rhicons1e02.woff2?3oibrk" as="font" type="font/woff2" crossorigin="crossorigin"></head>
<script type="text/javascript">
  
  function initAutocomplete() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: -33.8688, lng: 151.2195 },
      zoom: 13,
      mapTypeId: "roadmap",
    });
  // Create the search box and link it to the UI element.
  const input = document.getElementById("pac-input");
  const searchBox = new google.maps.places.SearchBox(input);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
  // Bias the SearchBox results towards current map's viewport.
  map.addListener("bounds_changed", () => {
    searchBox.setBounds(map.getBounds());
  });
  let markers = [];
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  searchBox.addListener("places_changed", () => {
    const places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }
    // Clear out the old markers.
    markers.forEach((marker) => {
      marker.setMap(null);
    });
    markers = [];
    // For each place, get the icon, name and location.
    const bounds = new google.maps.LatLngBounds();
    places.forEach((place) => {
      if (!place.geometry || !place.geometry.location) {
        console.log("Returned place contains no geometry");
        return;
      }
      const icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25),
      };
      // Create a marker for each place.
      markers.push(
        new google.maps.Marker({
          map,
          icon,
          title: place.name,
          position: place.geometry.location,
        })
        );

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
  });
}

</script>

<style type="text/css">
	#main_header, .is-sticky .logo_section_wrap, .sticky-active.logo_section_wrap{
		background-color: #072584!important;
	}
	.rehub_chimp #mc_embed_signup input#mc-embedded-subscribe{
		background-color: #072584!important;

	}
	.rehub-sec-color{
	color: #072584!important;

	}
	div.centered_form.rehub_chimp.rehub-sec-smooth{
		color: #072584!important;

	}
	#buddypress div.item-list-tabs ul li.selected a span, #buddypress div.item-list-tabs ul li.current a span, #buddypress div.item-list-tabs ul li a span, .user-profile-div .user-menu-tab>li.active>a, .user-profile-div .user-menu-tab>li.active>a:focus, .user-profile-div .user-menu-tab>li.active>a:hover, .news_in_thumb:hover a.rh-label-string, .news_out_thumb:hover a.rh-label-string, .col-feat-grid:hover a.rh-label-string, .carousel-style-deal .re_carousel .controls, .re_carousel .controls:hover, .openedprevnext .postNavigation .postnavprev, .postNavigation .postnavprev:hover, .top_chart_pagination a.selected, .flex-control-paging li a.flex-active, .flex-control-paging li a:hover, .btn_more:hover, body .tabs-menu li:hover, body .tabs-menu li.current, .featured_slider:hover .score, #bbp_user_edit_submit, .bbp-topic-pagination a, .bbp-topic-pagination a, .custom-checkbox label.checked:after, .slider_post .caption, ul.postpagination li.active a, ul.postpagination li:hover a, ul.postpagination li a:focus, .top_theme h5 strong, .re_carousel .text:after, #topcontrol:hover, .main_slider .flex-overlay:hover a.read-more, .rehub_chimp #mc_embed_signup input#mc-embedded-subscribe, #rank_1.rank_count, #toplistmenu>ul li:before, .rehub_chimp:before, .wpsm-members>strong:first-child, .r_catbox_btn, .wpcf7 .wpcf7-submit, .wpsm_pretty_hover li:hover, .wpsm_pretty_hover li.current, .rehub-main-color-bg, .togglegreedybtn:after, .rh-bg-hover-color:hover a.rh-label-string, .rh-main-bg-hover:hover, .rh_wrapper_video_playlist .rh_video_currently_playing, .rh_wrapper_video_playlist .rh_video_currently_playing.rh_click_video:hover, .rtmedia-list-item .rtmedia-album-media-count, .tw-pagination .current, .dokan-dashboard .dokan-dash-sidebar ul.dokan-dashboard-menu li.active, .dokan-dashboard .dokan-dash-sidebar ul.dokan-dashboard-menu li:hover, .dokan-dashboard .dokan-dash-sidebar ul.dokan-dashboard-menu li.dokan-common-links a:hover, #ywqa-submit-question, .woocommerce .widget_price_filter .ui-slider .ui-slider-range, .rh-hov-bor-line>a:after, nav.top_menu>ul:not(.off-canvas)>li>a:after, .rh-border-line:after, .wpsm-table.wpsm-table-main-color table tr th, .rehub_chimp_flat #mc_embed_signup input#mc-embedded-subscribe, .rh-hov-bg-main-slide:before, .rh-hov-bg-main-slidecol .col_item:before{
		background-color: #072584!important;
	}
</style>




<?php 
$states = \App\State::get();

$state_id = isset(Auth::guard('appusers')->user()->state) ? Auth::guard('appusers')->user()->state:Session::get('state_id');
$city_id = isset(Auth::guard('appusers')->user()->city) ? Auth::guard('appusers')->user()->city:Session::get('city_id');
if(!empty($state_id)){
	$cities = \App\City::where('state_id',$state_id)->get();
}


$keyword = isset($_GET['keyword']) ? $_GET['keyword']:'';
?>










	<body class="home-page bp-legacy home page-template-default page page-id-331 wp-embed-responsive elementor-default elementor-kit-1092 elementor-page elementor-page-331 no-js">

		<!-- Outer Start -->
		<div class="rh-outer-wrap">
			<div id="top_ankor"></div>

			<!-- HEADER -->
			<header id="main_header" class="dark_style width-100p position-relative">
				<div class="header_wrap">
					<!-- Logo section -->
					<div class="logo_section_wrap hideontablet">
						<div class="rh-container">
							<div class="logo-section rh-flex-center-align tabletblockdisplay header_six_style clearfix">
								<div class="logo">
									<a href="{{url('/')}}" class="logo_image"><img src="/public/assets/web/wp-content/uploads/2020/01/logoredeal.png" alt="Redeal test site" style="height: 50px!important; width: 100%!important;" /></a>

								</div>  


								<div id="re_menu_near_logo" class="hideontablet flowhidden floatleft">


									<ul id="menu-menu-for-logo-section" class="menu">
										<li id="menu-item-1036" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1036">

											<select class="form-control" name="state_id" id="state_id2">
											<option value="" selected disabled>Select Your State</option>
											<?php if(!empty($states)){
												foreach($states as $state){
												?>

												<option value="{{$state->id}}" <?php if($state_id == $state->id) echo "selected"?>>{{$state->name}}</option>

											<?php }}?>

										</select>


										</li>
									<li id="menu-item-970" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-970">

											<select class="form-control" name="city_id" id="city_id2">
											<option>Select Your City</option>
												<?php if(!empty($cities)){
												foreach($cities as $city){
												?>

												<option value="{{$city->id}}" <?php if($city_id == $city->id) echo "selected"?>>{{$city->name}}</option>

											<?php }}?>



										</select>



									</li>
									</ul>      
								  </div>




									<div class="rh-flex-center-align rh-flex-right-align">
										<div class="position-relative head_search hideontablet mr5 ml5 litesearchstyle"><form  role="search" method="get" class="search-form" action="{{route('home.search')}}">
											<input type="text" name="keyword" placeholder="Search" value="{{$keyword}}" class="re-ajax-search" autocomplete="off">
											<button type="submit" class="btnsearch" aria-label="Search"><i class="rhicon rhi-search"></i></button>
										</form>
										<div class="re-aj-search-wrap"></div></div>

										
										<?php if(!empty(Auth::guard('appusers')->user())){?>
											<div class="position-relative user-dropdown-intop mobileinmenu ml10"><span class="user-ava-intop"><img alt="" src="//www.gravatar.com/avatar/3b5c68149d8ef3b122d0e170f0fa6719?s=28&amp;r=g&amp;d=mm" srcset="//www.gravatar.com/avatar/3b5c68149d8ef3b122d0e170f0fa6719?s=28&amp;r=g&amp;d=mm 2x" class="avatar avatar-28 photo" height="28" width="28" loading="lazy"></span><ul class="user-dropdown-intop-menu"><li class="user-name-and-badges-intop"><span class="user-image-in-name"><img alt="" src="//www.gravatar.com/avatar/3b5c68149d8ef3b122d0e170f0fa6719?s=35&amp;r=g&amp;d=mm" srcset="//www.gravatar.com/avatar/3b5c68149d8ef3b122d0e170f0fa6719?s=35&amp;r=g&amp;d=mm 2x" class="avatar avatar-35 photo" height="35" width="35" loading="lazy"></span>{{Auth::guard('appusers')->user()->name}}<br>Wallet: {{Auth::guard('appusers')->user()->wallet}}</li>

												<!-- <li class="bp-profile-edit-menu-item menu-item"><a href="#"><i class="rhicon rhi-cogs"></i><span>Edit Profile</span></a></li>
												<li class="user-addsome-link-intop menu-item"><a href="#"><i class="rhicon rhi-cloud-upload"></i><span>Add your Deal</span></a></li>
												<li class="user-editposts-link-intop menu-item"><a href="#"><i class="rhicon rhi-edit"></i><span>Edit your deals</span></a></li> -->

													<li class="user-editposts-link-intop menu-item"><a href="{{route('user.profile')}}"><i class="rhicon rhi-edit"></i><span>My Profile</span></a></li>



												<li class="user-editposts-link-intop menu-item"><a href="{{route('user.subscription')}}"><i class="rhicon rhi-edit"></i><span>My Subscription</span></a></li>


												<li class="user-editposts-link-intop menu-item"><a href="{{route('user.wallethistory')}}"><i class="rhicon rhi-edit"></i><span>Wallets</span></a></li>
												
												<li class="user-logout-link-intop menu-item"><a href="{{route('home.logout')}}"><i class="rhicon rhi-lock-alt"></i><span>Log out</span></a></li>
											</ul>
										</div>
										<?php }else{?>
											<span class="wpsm-button white medium  mobileinmenu ml10" ><a href="{{route('home.login')}}"><i class="rhicon rhi-sign-in"></i>	</a>
											<a href="{{route('home.login')}}"><span>Login / Register</span></a>
											</span>
										<?php }?>







									</div>                        
								</div>
							</div>
						</div>
						<!-- /Logo section -->  
						<!-- Main Navigation -->
						<div class="search-form-inheader main-nav mob-logo-enabled white_style">  
							<div class="rh-container"> 



								<div class="responsive_nav_wrap rh_mobile_menu">
									<div id="dl-menu" class="dl-menuwrapper rh-flex-center-align">
										<button id="dl-trigger" class="dl-trigger" aria-label="Menu">
											<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
												<g>
													<line stroke-linecap="round" id="rhlinemenu_1" y2="7" x2="29" y1="7" x1="3"/>
													<line stroke-linecap="round" id="rhlinemenu_2" y2="16" x2="18" y1="16" x1="3"/>
													<line stroke-linecap="round" id="rhlinemenu_3" y2="25" x2="26" y1="25" x1="3"/>
												</g>
											</svg>
										</button>
										<div id="mobile-menu-icons" class="rh-flex-center-align rh-flex-right-align">
											<button class='icon-search-onclick' aria-label='Search'><i class='rhicon rhi-search'></i></button>
											<div id="slide-menu-mobile"></div>
										</div>
									</div>
								</div>
								<div class="search-header-contents">
									<select class="form-control" name="state_id" id="state_id1">
											<option value="" selected disabled>Select Your State</option>
											<?php if(!empty($states)){
												foreach($states as $state){
												?>

												<option value="{{$state->id}}" <?php if($state_id == $state->id) echo "selected"?>>{{$state->name}}</option>

											<?php }}?>
									</select>
										<br>
										<br>
										<select class="form-control" name="city_id" id="city_id1">
											<option>Select your City</option>
											<?php if(!empty($cities)){
												foreach($cities as $city){
												?>

												<option value="{{$city->id}}" <?php if($city_id == $city->id) echo "selected"?>>{{$city->name}}</option>

											<?php }}?>
									</select>

									<br>
									<br>


									<form  role="search" method="get" class="search-form" action="{{route('home.search')}}">
									<input type="text" name="keyword" value="{{$keyword}}" placeholder="Search" class="re-ajax-search" autocomplete="off">
									<button type="submit" class="btnsearch" aria-label="Search"><i class="rhicon rhi-search"></i></button>
								</form>



								<div class="re-aj-search-wrap"></div></div>



							</div>
						</div>
						<!-- /Main Navigation -->

					</div>  
				</header>

				<script type="text/javascript">
  $("#state_id1").change(function(){
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
       
        $("#city_id1").html(resp);

      }
    });
  });
</script>
	<script type="text/javascript">
  $("#state_id2").change(function(){
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
       
        $("#city_id2").html(resp);

      }
    });
  });

  $("#city_id2").change(function(){
    var city_id2 = $(this).val();
    var state_id2 = $('#state_id2').val();
    var _token = '{{ csrf_token() }}';
    $.ajax({
      url: "{{ url('/update_city') }}",
      type: "POST",
      data: {city_id:city_id2,state_id:state_id2},
      dataType:"JSON",
      headers:{'X-CSRF-TOKEN': _token},
      cache: false,
      success: function(resp){
       
       if(resp.status){
       	location.reload();
       }

      }
    });
  });

 $("#city_id1").change(function(){
    var city_id1 = $(this).val();
    var state_id1 = $('#state_id1').val();
    var _token = '{{ csrf_token() }}';
    $.ajax({
      url: "{{ url('/update_city') }}",
      type: "POST",
      data: {city_id:city_id1,state_id:state_id1},
      dataType:"JSON",
      headers:{'X-CSRF-TOKEN': _token},
      cache: false,
      success: function(resp){
       
       if(resp.status){
       	location.reload();
       }

      }
    });
  });



</script>