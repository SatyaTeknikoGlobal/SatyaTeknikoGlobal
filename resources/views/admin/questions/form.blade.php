@include('admin.common.header')
<?php
$BackUrl = CustomHelper::BackUrl();
$ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();


$questions_id = (isset($questions->id))?$questions->id:'';



$event_id = (isset($questions->event_id))?$questions->event_id:'';
$question_name = (isset($questions->question_name))?$questions->question_name:'';
$option_1 = (isset($questions->option_1))?$questions->option_1:'';
$option_2 = (isset($questions->option_2))?$questions->option_2:'';
$option_3 = (isset($questions->option_3))?$questions->option_3:'';
$option_4 = (isset($questions->option_4))?$questions->option_4:'';
$right_option = (isset($questions->right_option))?$questions->right_option:'';
$status = (isset($questions->status))?$questions->status:1;
$time = (isset($questions->time))?$questions->time:1;


$routeName = CustomHelper::getAdminRouteName();
$storage = Storage::disk('public');
$path = 'questions/';

?>


<div class="content-page">

    <!-- Start content -->
    <div class="content">

        <div class="container-fluid">

            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb-holder">
                        <h1 class="main-title float-left">{{ $page_heading }}</h1>
                        <ol class="breadcrumb float-right">
                            <li class="breadcrumb-item">Home</li>
                            <li class="breadcrumb-item active">{{ $page_heading }}</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- end row -->


            @include('snippets.errors')
            @include('snippets.flash')
            
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="card mb-3">
                        <div class="card-header">
                            <h3><i class="far fa-hand-pointer"></i>{{ $page_heading }}</h3>

                            <?php if(request()->has('back_url')){ $back_url= request('back_url');  ?>
                            <a href="{{ url($back_url)}}" class="btn btn-success btn-sm" style='float: right;'>Back</a><?php } ?>
                        </div>

                        <div class="card-body">

                           <form method="POST" action="" accept-charset="UTF-8" enctype="multipart/form-data" role="form">
                            {{ csrf_field() }}

                            <input type="hidden" name="id" value="{{$questions_id}}">


                            <div class="form-group">
                                <label for="userName">Event Name<span class="text-danger">*</span></label>
                               <select class="form-control select2"  name="event_id">
                                   <option value="" selected disabled>Select Event Name</option>

                                   <?php if(!empty($events)){
                                    foreach($events as $event){
                                    ?>
                                    <option value="{{$event->id}}" <?php if($event->id == $event_id) echo "selected"?>>{{$event->title}}</option>
                                <?php }}?>


                               </select>
                                @include('snippets.errors_first', ['param' => 'name'])
                            </div>



                             <div class="form-group">
                                <label for="emailAddress">Question<span class="text-danger">*</span></label>
                                <input type="text" name="question_name" value="{{ old('question_name', $question_name) }}" id="question_name" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'question_name'])

                            </div>

                             <div class="form-group">
                                <label for="emailAddress">Option 1<span class="text-danger">*</span></label>
                                <input type="text" name="option_1" value="{{ old('option_1', $option_1) }}" id="option_1" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'option_1'])

                            </div>

                             <div class="form-group">
                                <label for="emailAddress">Option 2<span class="text-danger">*</span></label>
                                <input type="text" name="option_2" value="{{ old('option_2', $option_2) }}" id="option_2" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'option_2'])

                            </div>


                             <div class="form-group">
                                <label for="emailAddress">Option 3<span class="text-danger">*</span></label>
                                <input type="text" name="option_3" value="{{ old('option_3', $option_3) }}" id="option_3" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'option_3'])

                            </div>

                             <div class="form-group">
                                <label for="emailAddress">Option 4<span class="text-danger">*</span></label>
                                <input type="text" name="option_4" value="{{ old('option_4', $option_4) }}" id="option_4" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'option_4'])

                            </div>


                             <div class="form-group">
                                <label for="emailAddress">Right Option<span class="text-danger">*</span></label>
                                    <select name="right_option" class="form-control">
                                        <option value="1">Option 1</option>
                                        <option value="2">Option 2</option>
                                        <option value="3">Option 3</option>
                                        <option value="4">Option 4</option>
                                    </select>
                                @include('snippets.errors_first', ['param' => 'right_option'])

                            </div>

                             <div class="form-group">
                                <label for="emailAddress">Time(In Second)<span class="text-danger">*</span></label>
                                <input type="text" name="time" value="{{ old('time', $time) }}" id="time" class="form-control"  maxlength="255" />
                                @include('snippets.errors_first', ['param' => 'time'])

                            </div>


                           



                     <div class="form-group">
                        <label>Status</label>
                        <div>
                           Active: <input type="radio" name="status" value="1" <?php echo ($status == '1')?'checked':''; ?> checked>
                           &nbsp;
                           Inactive: <input type="radio" name="status" value="0" <?php echo ( strlen($status) > 0 && $status == '0')?'checked':''; ?> >

                           @include('snippets.errors_first', ['param' => 'status'])
                       </div>
                   </div>



                   <div class="form-group text-right m-b-0">
                    <button class="btn btn-primary" type="submit">
                        Submit
                    </button>
                    <a type="reset" href="{{ route('admin.influencers.index') }}" class="btn btn-secondary m-l-5">
                        Cancel
                    </a>
                </div>

            </form>

        </div>
    </div><!-- end card-->
</div>



</div>

</div>
<!-- END container-fluid -->

</div>
<!-- END content -->

</div>
<!-- END content-page -->


@include('admin.common.footer')
<script>
    CKEDITOR.replace( 'description' );
</script>
