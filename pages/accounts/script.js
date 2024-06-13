$(document).ready(function () {
   $("#rolesPermissions").DataTable({
      paging: false,
      info: false,
      fixedHeader: true,
   });

   $('[data-toggle="collapse"]').on("click", function () {
      var icon = $(this).find(".tree-toggler .fas");
      if ($(this).attr("aria-expanded") === "true") {
         icon.removeClass("fa-angle-down").addClass("fa-angle-right");
      } else {
         icon.removeClass("fa-angle-right").addClass("fa-angle-down");
      }
   });

   $(".tree-check").on("change", function () {
      var target = $(this).data("target");
      $("#" + target)
         .find('input[type="checkbox"]')
         .prop("checked", $(this).is(":checked"));
   });

   $(".child-check").on("change", function () {
      var parent = $(this).data("parent");
      var allChecked = $("#" + parent + ' input[type="checkbox"]').length === $("#" + parent + ' input[type="checkbox"]:checked').length;
      $('.tree-check[data-target="#' + parent + '"]').prop("checked", allChecked);
   });
});
