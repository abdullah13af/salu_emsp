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
                  <h3>{{ $page_title }}</h3>
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
                <form action="/subjects_marks" id="subjects_marks_form" method="post" novalidate class="needs-validation">
                  @csrf
                  @method('POST')
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <p class="text-muted font-13 m-b-30">
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                          <th>Student Name</th>
                          <th>Subject</th>
                          <th>Type</th>
                          <th>Batch</th>
                          <th>Year</th>
                          <th class="mid_marks">Mid Marks</th>
                          <th class="sessional_marks">Sessional Marks</th>
                          <th class="practical_marks">Practical Marks</th>
                          <th class="final_marks">Final Marks</th>
                          {{-- <th>Actions</th> --}}
                        </tr>
                      </thead>
                      <tbody>

                          @foreach ($subjects_marks as $subject_marks)
                            <tr>
                              <td>{{ $subject_marks->student->user->name }}</td>
                              <td>{{ $subject_marks->teacher_subjects->subject->name }}</td>
                              <td>@if ($subject_marks->is_fresher)
                                  Fresher
                              @elseif($subject_marks->is_improver)
                                  Improver
                              @else
                                  Failure
                              @endif</td>
                              <td>{{ $subject_marks->student->batch->name }}</td>
                              <td>{{ $subject_marks->teacher_subjects->year }}</td>

                              <input type="hidden" name="teacher_subjects_id" value="{{ $subject_marks->teacher_subjects->id }}">

                              <td class="mid_marks">
                                <div class="item form-group">
                                    <div class="col-sm-12 ">
                                        <input type="number" min="0.0" max="30" step="0.1" id="mid_marks{{ $subject_marks->id }}" name="mid_marks{{ $subject_marks->id }}" value="{{ $subject_marks->mid_marks }}"
                                            placeholder="Mid Marks" 
                                            class="form-control @error('mid_marks{{ $subject_marks->id }}') is-invalid @enderror">
                                      <div class="invalid-feedback">Must be between 0 and 30</div>
                                    </div>
                                </div>
                              </td>

                              <td class="sessional_marks">
                                <div class="item form-group">
                                  <div class="col-sm-12 ">
                                      <input type="number" min="0.0" max="20" step="0.1" id="sessional_marks{{ $subject_marks->id }}" name="sessional_marks{{ $subject_marks->id }}" value="{{ $subject_marks->sessional_marks }}"
                                          placeholder="Sessional Marks" 
                                          class="form-control @error('sessional_marks{{ $subject_marks->id }}') is-invalid @enderror">
                                      <div class="invalid-feedback">Must be between 0 and 20</div>
                                  </div>
                                </div>
                              </td>

                              <td class="practical_marks">
                                <div class="item form-group">
                                  <div class="col-sm-12 ">
                                      <input type="number" min="0.0" max="50" step="0.1" id="practical_marks{{ $subject_marks->id }}" name="practical_marks{{ $subject_marks->id }}" value="{{ $subject_marks->practical_marks }}"
                                          placeholder="Practical Marks" 
                                          class="form-control @error('practical_marks{{ $subject_marks->id }}') is-invalid @enderror">
                                      <div class="invalid-feedback">Must be between 0 and 50</div>
                                  </div>
                                </div>
                              </td>

                              <td class="final_marks">
                                <div class="item form-group">
                                  <div class="col-sm-12 ">
                                      <input type="number" min="0.0" max="80" step="0.1" id="final_marks{{ $subject_marks->id }}" name="final_marks{{ $subject_marks->id }}" value="{{ $subject_marks->final_marks }}"
                                          placeholder="Final Marks" 
                                          class="form-control @error('final_marks{{ $subject_marks->id }}') is-invalid @enderror">
                                      <div class="invalid-feedback">Must be between 0 and 80</div>
                                  </div>
                                </div>
                              </td>
                            
                          </tr>
                          @endforeach

                          <input type="hidden" name="subject_type" id="subject_type" value="{{ $subjects_marks[0]->teacher_subjects->subject->subject_type }}">
                        </tbody>
                      </table>
                    </div>
                    <div class="row">
                      <div class="col-12 d-flex">
                        <button class="btn mt-4 mr-2 ml-auto btn-success" id="submit_form" type="submit">Save</button>
                      </div>
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

    @include('layouts.footer')
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
    <script>
      (function () {
        'use strict'
        
        // disable mid, sessional, final marks is subject_type is practical
        if ($("#subject_type").val() == 'practical') {
          $(".mid_marks").remove();
          $(".sessional_marks").remove();
          $(".final_marks").remove();

        // disable practical_marks
        } else {
          $(".practical_marks").remove();
        }


        // form validation
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')
        
        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
        .forEach(function (form) {
          form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
              event.preventDefault()
              event.stopPropagation()
            }          
            form.classList.add('was-validated')
          }, false)
        })
      })();

  </script>
</body>
</html>
