<?php session_start();
include 'db.php';

if(isset($_POST["login"]) && isset($_POST["password"]) && isset($_POST["verifyCode"]))
{
  if($_POST["verifyCode"] == $_SESSION["vercode"])
  {
    $login = $_POST["login"];
    $password = $_POST["password"];
    $result = mysql_query("select staff_id from staff where login = '$login' and password = '$password'") or die(mysql_error());
    $staff_id = mysql_fetch_object($result)->staff_id;
    if($staff_id != '')
    {

      $_SESSION["staff_id"] = $staff_id;
      ?>
      <script>
      console.log("<?php echo   $_SESSION["staff_id"];?>");
      window.location = "http://www.bcd-intl.com/bcd_admin";
      </script>
      <?php
    }
    else
    {

      ?>
      <script>

      //window.location = "http://www.bcd-intl.com/bcd_admin/login.php";
      </script>
      <?php
    }
  }
}
else
{
  ?>
  <script>
  //window.location = "login.php";
  </script>
  <?php
}
?>
