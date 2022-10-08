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
                            <h3>Students </h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row justify-content-center align-items-center">
                        <div class="col-md-8 col-sm-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2 class="text-center">Add New Student</h2>
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

                                    <form action="/students" method="POST" id="demo-form2" data-parsley-validate
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
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Student Name <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="name" name="name" value="{{ old('name') }}"
                                                    placeholder="Student Name" required
                                                    class="form-control @error('name') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="father_name">Father's Name <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="father_name" name="father_name" value="{{ old('father_name') }}"
                                                    placeholder="Father's Name" required
                                                    class="form-control @error('father_name') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="surname">Surname <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="surname" name="surname" value="{{ old('surname') }}"
                                                    placeholder="Surname" required
                                                    class="form-control @error('surname') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Student's Email <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="email" id="email" name="email" value="{{ old('email') }}"
                                                    placeholder="Student's Email" required
                                                    class="form-control @error('email') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Student's Password <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="password" id="password" name="password" value="{{ old('password') }}"
                                                    placeholder="Student's Password" required
                                                    class="form-control @error('password') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="religion">Religion <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="religion" name="religion" value="{{ old('religion') }}"
                                                    placeholder="Religion" required
                                                    class="form-control @error('religion') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="nationality">Nationality <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="nationality" name="nationality" value="{{ old('nationality') }}"
                                                    placeholder="Nationality" required
                                                    class="form-control @error('nationality') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="residential_address">Residential Address <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="residential_address" name="residential_address" value="{{ old('residential_address') }}"
                                                    placeholder="Residential Address" required
                                                    class="form-control @error('residential_address') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="cnic_no">CNIC No <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <input type="text" id="cnic_no" name="cnic_no" value="{{ old('cnic_no') }}"
                                                    placeholder="CNIC No" required
                                                    class="form-control @error('cnic_no') is-invalid @enderror">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="col-form-label col-md-3 col-sm-3 " for="name">Gender <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 ">
                                                <select id="gender" name="gender" class="form-control @error('gender') is-invalid @enderror">
                                                  <option value="">Selete Gender</option>
                                                  @foreach ($genders as $gender)
                                                      <option value="{{ $gender }}" {{ (old("gender") == $gender ? "selected":"") }}>{{ ucfirst(trans($gender)) }}</option>
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
                                                <option value="">Selete Department</option>
                                                @foreach ($departments as $department)
                                                    <option value="{{ $department->id }}" {{ (old("department_id") == $department->id ? "selected":"") }}>{{ $department->name }}</option>
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
                                                  <option value="">Selete Batch</option>
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
