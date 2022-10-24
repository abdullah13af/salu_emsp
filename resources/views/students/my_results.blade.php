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
                  <h3>My Subjects </h3>
              </div>
          </div>
          <div class="clearfix"></div>
          
          <div class="row justify-content-center align-items-center">
            <div class="col-md-12 col-sm-12 ">
              <div class="x_panel">
                <div class="x_title">
                  <h2>My Subjects</h2>
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
                        <th>Semester</th>
                        <th>Theory Obtained Marks</th>
                        <th>Thoery Total Marks</th>
                        <th>Practical Obtained Marks</th>
                        <th>Practical Total Marks</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($semesters_results as $key => $semesters_result)
                        <tr>
                          <td>{{ $key }}</td>
                          <td>{{ $semesters_result['theory_obtained_marks'] }}</td>
                          <td>{{ $semesters_result['theory_total_marks'] }}</td>
                          <td>{{ $semesters_result['practical_obtained_marks'] }}</td>
                          <td>{{ $semesters_result['practical_total_marks'] }}</td>
                          <td>
                            <a href="/students/result/{{ $key }}" class="" data-toggle="tooltip" data-placement="top" title="View Semester Result">
                              <i class="fa fa-eye" style="font-size: 20px" aria-hidden="true"></i>
                            </a>   
                          </td>
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
