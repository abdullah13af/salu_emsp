// subjects dependent-dropdown start
$(document).ready(function() {
  get_subjects_of_selected_department();
  $('#department_id').on('change', get_subjects_of_selected_department);

});

  function get_subjects_of_selected_department() {
    var departmentID = $('#department_id').val();
    if(departmentID) {
        $.ajax({
            url: '/get_subjects/'+departmentID,
            type: "GET",
            data : {"_token":"{{ csrf_token() }}"},
            dataType: "json",
            success:function(data)
            {
              if(data){
                 $('#subject_id').empty();
                 $('#subject_id').append('<option >Select Subject</option>'); 
                 $.each(data, function(key, subject){
                     $('select[name="subject_id"]').append('<option value="'+ subject.id +'">' + subject.name + " - S" + subject.semester + " - " + subject.subject_type.toUpperCase().slice(0,1) + '</option>');
                 });
             }else{
                 $('#subject_id').empty();
             }
          }
        });
    }else{
      $('#subject_id').empty();
    }
 }
// subjects dependent-dropdown end

