<?php include "header.php" ?>


    <!--carousel-->
    <div id="Home">
    	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
    			<div class="carousel-item active">
      				<img class="d-block w-100" src="images/slideshow/sapa.png" alt="Sapa" height="570" width="1366">
    			</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/hohoankiem.png" alt="Hồ Hoàn Kiếm" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/hoian.png" alt="Hội An" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/phuquoc.png" alt="Phú Quốc" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/chuathienmu.png" alt="Chùa Thiên Mụ" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/dongbangsongcuulong.png" alt="Đồng Bằng sông Cửu Long" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/nhatrang.png" alt="Nha Trang" height="570" width="1366">
	    		</div>
	    		<div class="carousel-item">
	      			<img class="d-block w-100" src="images/slideshow/diadaocuchi.png" alt="Địa đạo Củ Chi" height="570" width="1366">
	    		</div>
    		
  			</div>
  			<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    			<span class="sr-only">Previous</span>
  			</a>
  			<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		   		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		   		<span class="sr-only">Next</span>
  			</a>
		</div>

		<div class="survey">
			<div class="surveyText"> Bạn không biết nên đi đâu vào các ngày nghỉ lễ? Hãy thử làm khảo sát xem mình nên đi đâu nhé!</div>
			<div class="surveyBtn"><a href="survey.php"><button class="yellowBtn">Làm khảo sát</button></a></div>
		</div>
	</div> <!--home ends-->

<?php

  echo '<!--upcoming section-->
  <div class="sectionHeader" id="Upcoming">
    <div class="header">
      <div class="headingText">Tour du lịch</div>
      <div class="viewAllBtn"><button class="secondaryBtn" type="button" id="VABtn" data-toggle="collapse" data-target="#AllTrips" aria-expanded="false" aria-controls="AllTrips" onclick="javascript:toggleText();">Xem tất cả</button></div>
    </div>
    <div id ="cards" class="row mx-auto">';

  $sql="SELECT * FROM trip WHERE Status=1";
  $result = mysqli_query($conn,$sql);
  $rows = mysqli_num_rows($result);
  if($rows<=4)
  {  $limit = $rows;}
  else
  {  $limit = 4;}
  for($i=0;$i<$limit;$i++)
  {
    $tripID = mysqli_fetch_assoc($result);
    $sql2='SELECT locations from trip_location where tripId="'.$tripID["TripId"].'"';
    $result2 = mysqli_query($conn,$sql2);
    $rows2 = mysqli_num_rows($result2);
    $temp =  mysqli_fetch_assoc($result2);
    $locs = $temp["locations"];
    for($j=1;$j<$rows2;$j++)
    {
      $temp =  mysqli_fetch_assoc($result2);
      $locs=$locs." - ".$temp["locations"];
    }

    echo 
        '<div class="col-sm-3">
          <div class="card" style="width: 18rem;">
              <img class="card-img-top" src="uploads/'.$tripID["Image"].'"Card image cap">
              <div class="card-body">
                <h5 class="card-title">'.$locs.'</h5>
                <p class="card-text">Giá tiền '.$tripID["BasePrice"].'đ</p>
                <form action="home.php" method="post">
                 <a href="#" data-toggle="modal" data-target="#tripDetails'.$i.'" class="toggle" class="viewBtn"><input type="submit" name="trip_sel" value="Xem chi tiết" class="viewBtn"> </a>
                </form>
              </div>
          </div>
        </div>'
      ;

      echo '<!--modal-->
      <form action="join.php" method="post">
      <input type="hidden" name="tripid" value="'.$tripID["TripId"].'">
    <div class="modal fade" id="tripDetails'.$i.'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">'.$locs.'</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="carouselimg">
                <img class="img-fluid" src="uploads/'.$tripID["Image"].'">
                <div class="modalText">
                  <label><b>Ngày:</b> '.$tripID["StartDate"].' tới '.$tripID["EndDate"].'<br>
     
                  <label><b>Giá tiền:</b> '.$tripID["BasePrice"].'đ*</label>
                  <p id="terms">*Các chi phí được đề cập ở trên chỉ bao gồm giá cơ bản của chuyến đi , không bao gồm chi phí đi lại . </p>
              </div>
           
            </div>
            <div class="modal-footer">
              <input type="submit" class="yellowBtn joinBtn" name="tripjoined" value="Tham gia"></form>
            </div>
        </div>
      </div>
  </div>
    <!--modal ends-->'; 

  }
  if($rows>4)
  {
    echo '<div class="collapse" id="AllTrips">';
    for($i=4;$i<$rows;$i++)
  {
    $tripID = mysqli_fetch_assoc($result);
    $sql2='SELECT locations from trip_location where tripId="'.$tripID["TripId"].'";';
    $result2 = mysqli_query($conn,$sql2);
    $rows2 = mysqli_num_rows($result2);
    $temp =  mysqli_fetch_assoc($result2);
    $locs = $temp["locations"];
    for($j=1;$j<$rows2;$j++)
    {
      $temp =  mysqli_fetch_assoc($result2);
      $locs=$locs." - ".$temp["locations"];
    }

    echo 
        '<div class="col-sm-3">
          <div class="card" style="width: 18rem;">
              <img class="card-img-top" src="uploads/'.$tripID["Image"].'"Card image cap">
              <div class="card-body">
                <h5 class="card-title">'.$locs.'</h5>
                <p class="card-text">Giá tiền '.$tripID["BasePrice"].'đ</p>
                <form action="home.php" method="post">
                 <a href="#" data-toggle="modal" data-target="#tripDetails'.$i.'" class="toggle" class="viewBtn"><input type="submit" name="trip_sel" value="Xem chi tiết" class="viewBtn"> </a>
                </form>
              </div>
          </div>
        </div>'
      ;

      echo '<!--modal-->
       <form action="join.php" method="post">
      <input type="hidden" name="tripid" value="'.$tripID["TripId"].'">
    <div class="modal fade" id="tripDetails'.$i.'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">'.$locs.'</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="carouselimg">
                <img class="img-fluid" src="uploads/'.$tripID["Image"].'">
                <div class="modalText">
                  <label><b>Ngày:</b> '.$tripID["StartDate"].' tới '.$tripID["EndDate"].'<br>
                  <label><b>Giá tiền:</b> '.$tripID["BasePrice"].'đ*</label>
                  <p id="terms">*Các chi phí được đề cập ở trên chỉ bao gồm giá cơ bản của chuyến đi , không bao gồm chi phí đi lại. </p>
              </div>
           
            </div>
            <div class="modal-footer">
               <input type="submit" class="yellowBtn joinBtn" value="Tham gia" name="tripjoined"></form>
            </div>
        </div>
      </div>
  </div>
    <!--modal ends-->'; 

  }
      echo '</div>';
  }

  echo  '</div></div>';

  
      
    
    
  
  
  ?>
    
  
    
	
    <!--footer-->
    <?php include "footer.php" ?>
    	


