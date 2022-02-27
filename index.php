<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank waih you, always</title>
    
<style>
    body{
        background-color: white;
    }
    input{
        width: 40%;
        height:5%;
        border:1px;
        border-radius: 5px;
        padding: 8px 15px 8px 15px;
        margin: 10px 0px 15px 0px;
        box-shadow: 1px 1px 2px 1px grey;
    }
</style>
</head>
<body>
    <div class="container">
        This is a demo project named "TraVisS : Transaction Visualisation and Search Sysytem"
    </div>
    <center>
        <h1> Please Enter Account Number and Password to get information about the bank account</h1>
        <form action="" method="POST">
            <input type="text"name="id" placeholder="Enter Account Number "/> <br>
            <input type="int"name="Password" placeholder="Enter Password "/> <br>
            <input type="submit" name="search" value="Search">

        </form>
        <?php 
        $connection = mysqli_connect("localhost","root","");
        $db = mysqli_select_db($connection,'acholders');
          if(isset($_POST['search']))
          {
              $id = $_POST['id'];

              $query = "SELECT * FROM info1 where  id='$id'";
              $query_run = mysqli_query($connection,$query);

              while($row = mysqli_fetch_array($query_run))
              {
                 ?>
                    <form action="" method="POST">
                        <input type="text" name="id" value="<?php echo $row['id'] ?>"/>
                        <input type="text" name="name" value="<?php echo $row['name'] ?>" />
                        <input type="text" name="trans" value="<?php echo $row['trans'] ?>" />
                        <input type="text" name="bal" value="<?php echo $row['bal'] ?>" />
                        <input type="hidden" name="password" value="<?php echo $row['password'] ?>" />
                    </form>
                 <?php
              }
          }
          
        ?>
    
     

    </center>
</body>
</html>


