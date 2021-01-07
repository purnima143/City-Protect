<!-- Author: Rahul Hegde, Gunashree 
      
Logs out of a session

-->
<?php

session_start();
header("location:headlogin.php");
session_destroy();

?>