@include('admin.common.header')

<?php
$BackUrl = CustomHelper::BackUrl();
$routeName = CustomHelper::getAdminRouteName();


$storage = Storage::disk('public');
$path = 'influencer/thumb/';
?>

<div class="content-page">

  <!-- Start content -->
  <div class="content">

    <div class="container-fluid">

      <div class="row">
        <div class="col-xl-12">
          <div class="breadcrumb-holder">
            <h1 class="main-title float-left">Event Question</h1>
            <ol class="breadcrumb float-right">
              <li class="breadcrumb-item">Home</li>
              <li class="breadcrumb-item active">Event Question</li>
            </ol>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      <!-- end row -->
            @include('snippets.errors')
            @include('snippets.flash')


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6">
          <div class="card mb-3">
            <div class="card-body">
             <select class="form-control select2" id="event_filter">
              <option value="0" selected>All</option>
              <?php if(!empty($events)){
                foreach($events as $event){?>
                <option value="{{$event->id}}">{{$event->title}}</option>
              <?php }}?>

             </select>
            </div>
          </div>
          <!-- end card-->
        </div>
      </div>












      <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <div class="card mb-3">
            <div class="card-header">
              <h3>Event Question List</h3>
              <span class="pull-right">
                  <a href="{{ route('admin.events.question_add', ['back_url'=>$BackUrl]) }}" class="btn btn-primary btn-sm"><i class="fas fa-user-plus" aria-hidden="true"></i> Add New Question</a>
              </span>
            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table id="dataTable" class="table table-bordered table-hover display" style="width:100%">
                  <thead>
                    <tr>
                     <th scope="col">ID</th>
                     <th scope="col">Event Name</th>
                     <th scope="col">Question Name</th>
                     <th scope="col">Option 1</th>
                     <th scope="col">Option 2</th>
                     <th scope="col">Option 3</th>
                     <th scope="col">Option 4</th>
          
                     <th scope="col">Right Option</th>
                     <th scope="col">Time(In Sec.)</th>

                     <th scope="col">Status</th>
                     <th scope="col">Date Created</th>
                     <th scope="col">Ask</th>
                     <th scope="col">Result</th>

                     <th scope="col">Action</th>
                   </tr>
                 </thead>
               </table>
             </div>
             <!-- end table-responsive-->

           </div>
           <!-- end card-body-->

         </div>
         <!-- end card-->

       </div>

     </div>
     <!-- end row-->

   </div>
   <!-- END container-fluid -->

 </div>
 <!-- END content -->

</div>
<!-- END content-page -->



@include('admin.common.footer')

<script>



  var i = 1;
  var table = $('#dataTable').DataTable({
   ordering: false,
   processing: true,
   serverSide: true,
    ajax: {
          url: '{{ route("admin.events.get_questions")}}',
          data: function (d) {
                d.event_id = $('#event_filter').val(),
                d.search = $('input[type="search"]').val()
            }
      },





   columns: [
   { data: 'id', name: 'id' },
  //   {
  //   "render": function() {
  //     return i++;
  //   }
  // },
   { data: 'event_name', name: 'event_name' ,searchable: false, orderable: false},
   { data: 'question_name', name: 'question_name' },
   { data: 'option_1', name: 'option_1' },
   { data: 'option_2', name: 'option_2' },
   { data: 'option_3', name: 'option_3' },
   { data: 'option_4', name: 'option_4' },
   { data: 'right_option', name: 'right_option' },
   { data: 'time', name: 'time' },


   { data: 'status', name: 'status' },
   { data: 'created_at', name: 'created_at' },
   { data: 'ask', name: 'ask' },
   { data: 'result', name: 'result' },

   { data: 'action', searchable: false, orderable: false }

   ],
});
 $('#event_filter').change(function(){
        table.draw();
    });




function change_status(userid){
  var status = $('#change_status'+userid).val();


   var _token = '{{ csrf_token() }}';

            $.ajax({
                url: "{{ route($routeName.'.users.change_status') }}",
                type: "POST",
                data: {userid:userid, status:status},
                dataType:"JSON",
                headers:{'X-CSRF-TOKEN': _token},
                cache: false,
                success: function(resp){
                    if(resp.success){
                      alert(resp.message);
                    }else{
                      alert(resp.message);
                      
                    }
                }
            });


}

function question_ask(question_id){
  var _token = '{{ csrf_token() }}';

            $.ajax({
                url: "{{ route($routeName.'.events.question_ask') }}",
                type: "POST",
                data: {question_id:question_id},
                dataType:"JSON",
                headers:{'X-CSRF-TOKEN': _token},
                cache: false,
                success: function(resp){
                    if(resp.success){

                     $('#dataTable').DataTable().ajax.reload();


                    }else{
                      alert(resp.message);
                      
                    }
                }
            });



}

</script>