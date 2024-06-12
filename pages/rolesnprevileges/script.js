$(document).ready(function () {
   $("#dataRolesNPrevileges").DataTable();
   $('.tree-label[data-toggle="collapse"]').on("click", function () {
      $(this).find(".tree-toggler").toggleClass("collapsed");
   });
});
