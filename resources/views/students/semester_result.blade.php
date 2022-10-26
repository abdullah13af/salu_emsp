@include('layouts.header')

<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      
      @include('layouts.sidebar')

      @include('layouts.menu')

      <!-- page content -->
      <div class="right_col min-vh-100" role="main">
        <div class="">
          <div class="page-title">
              <div class="title_left">
                  <h3>{{ $page_title }} </h3>
              </div>
          </div>
          <div class="clearfix"></div>
          
          <div class="row justify-content-center align-items-center">
            <div class="col-md-12 col-sm-12 ">
              <div class="x_panel">
                <div class="x_title">
                  <h2>{{ $page_title }}</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                          <div class="card-box table-responsive">
                  <p class="text-muted font-13 m-b-30">
                  </p>
                  <table id="datatable-buttons" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                      <tr>
                        <th>Subject</th>
                        <th>Subject Type</th>
                        <th>Mid Term Marks</th>
                        <th>Sessional Marks</th>
                        <th>Final Term Marks</th>
                        <th>Practical Marks</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($subject_marks as  $subject_mark)
                        <tr>
                          <td>{{ $subject_mark->teacher_subjects->subject->name }}</td>
                          <td>{{ ucfirst(trans($subject_mark->teacher_subjects->subject->subject_type)) }}</td>

                          @if ($subject_mark->teacher_subjects->subject->subject_type == 'theory')
                            <td>{{ $subject_mark->mid_marks }}</td>
                            <td>{{ $subject_mark->sessional_marks }}</td>
                            <td>{{ $subject_mark->final_marks }}</td>
                            <td>N/A</td>
                          @else
                            <td>N/A</td>
                            <td>N/A</td>
                            <td>N/A</td>
                            <td>{{ $subject_mark->practical_marks }}</td>
                          @endif

                        </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    @include('layouts.footer')
    
</body>
</html>
