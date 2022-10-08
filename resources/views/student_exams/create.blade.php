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
                            <h3>Add Student to Exam</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row justify-content-center align-items-center">
                        <div class="col-md-8 col-sm-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2 class="text-center">Add Student to Exam</h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />

                                    @if ($errors->any())
                                        <div class="alert alert-danger alert-dismissible " role="alert">
                                        <button type="button" class="close" data-dismiss="alert"
                                            aria-label="Close"><span aria-hidden="true">×</span>
                                        </button>
                                        <strong>Whoops!</strong>
                                        <ul>
                                            @foreach ($errors->all() as $message)
                                            <li>{{ $message }}</li>
                                            @endforeach
                                        </ul>
                                        </div>
                                    @endif

                                    <form action="/student_exams" method="POST" id="demo-form2" data-parsley-validate
                                        novalidate class="needs-validation form-horizontal form-label-left">
                                        @csrf
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="roll_no">Roll No <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="roll_no" name="roll_no" value="{{ old('roll_no') }}"
                                                    placeholder="Roll No" required
                                                    class="form-control @error('roll_no') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="year">Year <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="number" id="year" name="year" value="{{ old('year') }}"
                                                    placeholder="Year" required
                                                    class="form-control @error('year') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Select Type <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <select id="student_exam_type" name="student_exam_type" class="form-control @error('student_exam_type') is-invalid @enderror">
                                                  <option value="">Select Type</option>
                                                  @foreach ($student_exam_types as $student_exam_type)
                                                      <option value="{{ $student_exam_type }}" {{ (old("student_exam_type") == $student_exam_type ? "selected":"") }}>{{ ucfirst(trans($student_exam_type)) }}</option>
                                                  @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Select Department <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <select id="department_id" name="department_id" class="form-control @error('department_id') is-invalid @enderror">
                                                  <option value="">Select Department</option>
                                                  @foreach ($departments as $department)
                                                      <option value="{{ $department->id }}" {{ (old("department_id") == $department->id ? "selected":"") }}>{{ $department->name }}</option>
                                                  @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Select Subject <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <select id="subject_id" name="subject_id" class="form-control @error('subject_id') is-invalid @enderror">
                                                  <option value="">Select Subject</option>
                                                  @foreach ($subjects as $subject)
                                                      <option value="{{ $subject->id }}" {{ (old("subject_id") == $subject->id ? "selected":"") }}>{{ $subject->name }}</option>
                                                  @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Select Batch <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <select id="batch_id" name="batch_id" class="form-control @error('batch_id') is-invalid @enderror">
                                                  <option value="">Select Batch</option>
                                                  @foreach ($batches as $batch)
                                                      <option value="{{ $batch->id }}" {{ (old("batch_id") == $batch->id ? "selected":"") }}>{{ $batch->name }}</option>
                                                  @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="ln_solid"></div>
                                        <div class="item form-group">
                                            <div class="col-md-9 col-sm-9 offset-md-3 justify-content-between d-flex">
                                                <button type="submit" class="btn btn-success">Submit</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /page content -->


            @include('layouts.footer')

</body>

</html>
