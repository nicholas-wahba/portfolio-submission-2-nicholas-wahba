<?php
    INCLUDE("tabledatabase.php");
?>
<html>
  <head>
    <title>Sales</title>
  </head>
  <body>
   <h2>Current Sales</h2>

   <form action = "index.php" method = "POST">

    <label for = "customer_id">Customer ID</label>
    <input type = "number" id="customer_id" name = "customer_id" min = "1" max = "100">
  
    <label for = "first_name">First Name</label>
    <input type = "text" id="first_name" name = "first_name">

    <label for = "last_name">Last Name</label>
    <input type = "text" id="last_name" name = "last_name">

    <label for = "city">City</label>
    <input type = "text" id="city" name = "city">

    <label for = "state">State</label>
    <input type = "text" id="state" name = "state">

    <input type="submit" value="Submit">
   
  </form>

    <?php
       connect();
       salesTable();
       updateTable();
       close();
    ?>
  </body>
</html>