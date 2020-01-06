<!DOCTYPE html>
<html>
<head>
	<title>web du lịch</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" href="images/favicon.png">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500" rel="stylesheet">
	<!--Bootstrap CSS-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="override.css">
    <link rel="stylesheet" type="text/css" href="survey.css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="10">
	<!--navigation bar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand heading" href="home.php">Du lịch</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="navbarNavDropdown" class="navbar-collapse collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.php">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Upcoming">Tour sắp tới</a>
                </li>
                 <!--<li class="nav-item">
                    <a class="nav-link" href="https://www.google.com">FAQ</a>
                </li> -->
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item dropdown" id="in_nav">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Xin chào <?php  
                             $servername = 'localhost';

                             
    						 $username = 'root';
    						 $password = '';
     						 $db='letstravel';
    						 $conn = mysqli_connect($servername,$username,$password,$db);
    						if (!$conn) 	
        					{			
            					die("Không thể kết nối: " . mysqli_connect_error());
        					}
                            session_start();
                            if($_SESSION['status']=='loggedin')
                            {                            	
                            	$email=$_SESSION['user_email'];
                                $sql="SELECT LastName FROM user WHERE Email='".$email."'";
                                $fname = mysqli_query($conn,$sql);                                
                                while ($row=$fname->fetch_assoc()) {                            	
                            	echo $row['LastName'];
                              }
                            }                         
                            ?>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <!-- <a class="dropdown-item" href="#">Edit Profile</a> -->
                        <a class="dropdown-item" href="logout.php" name="logout_link">Đăng xuất</a>
                    </div>
                </li>
                <li class="nav-item" id="outl_nav">
                    <a class="nav-link" href="userlogin.html">Đăng nhập</a>
                </li>
                <li class="nav-item" id="outr_nav">
                    <a class="nav-link" href="register.html">Đăng ký</a> 
                </li>
            </ul>
        </div>
    </nav>