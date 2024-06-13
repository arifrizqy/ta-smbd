$(document).ready(function () {
   $("#dataAccount").DataTable();

   $("#rolesPermissions").DataTable({
      paging: false,
      info: false,
      fixedHeader: true,
   });

   $("#btnGeneratePassword").on("click", function () {
      $("#password").val(generatePassword(8));
   });
});

function generatePassword(length) {
   let pass = "";
   let str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

   for (let i = 1; i <= 8; i++) {
      let char = Math.floor(Math.random() * str.length + 1);

      pass += str.charAt(char);
   }

   return pass;
}
