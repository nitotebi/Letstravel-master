<?php
error_reporting(0);
session_start();

if($_SESSION['status']=='loggedin')
{
	?>
<?php include 'header.php'; ?>


    <!--header-->
    <div class="parallax">
  		<div class="caption">
    		<span class="surveyText">Không biết nên đi đâu<br> Trả lời các câu hỏi bên dưới để xem địa điểm nào bạn có thể đi nhé!</span>
  		</div>
	</div>

    <!--header ends-->

    <!--form-->
    <form class="surveyForm" method="post" action="result.php">
	  	<div class="form-group category">
	    	<label for="category">Khi du lịch, tôi muốn đi đến những nơi...</label>
	    	<div class="form-check">
  				<input class="form-check-input" type="checkbox" id="cat_Heri" value="HS" name="category[]">
  				<label class="form-check-label" for="cat_AA">Di sản kiến trúc văn hóa</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="cat_adv" value="AA" name="category[]">
			  <label class="form-check-label" for="cat_adv">Năng động và phiêu lưu</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="cat_BN" value="BN" name="category[]">
			  <label class="form-check-label" for="cat_BN">Các bãi biển hoặc khu thiên nhiên</label>
			</div>
	  	</div>
	  	<div class="form-group budget">
	    	<label for="budget">Giá phù hợp với bạn</label>
	    	<div class="form-check">
  				<input class="form-check-input" type="checkbox" id="bud1" value="1" name="budget[]">
  				<label class="form-check-label" for="bud1">Nhỏ hơn 1 triệu</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="bud2" value="2" name="budget[]">
			  <label class="form-check-label" for="bud2">1 triệu - 5 triệu</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="bud3" value="3" name="budget[]">
			  <label class="form-check-label" for="bud3">Lớn hơn 5 triệu</label>
			</div>
		</div>

		<div class="form-group accomGrp">
	    	<label for="accomGrp">Những người đi cùng </label>
	    	<div class="form-check">
  				<input class="form-check-input" type="checkbox" id="friends" value="FR" name="group[]">
  				<label class="form-check-label" for="friends">Bạn bè</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="family" value="F" name="group[]">
			  <label class="form-check-label" for="family">Gia đình</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="partner" value="C" name="group[]">
			  <label class="form-check-label" for="partner">Vợ hoặc chồng</label>
			</div>
		</div>

		<div class="form-group age">
	    	<label for="age">Độ tuổi</label>
	    	<div class="form-check">
  				<input class="form-check-input" type="checkbox" id="kids" value="1" name="age_group[]">
  				<label class="form-check-label" for="kids">Nhỏ hơn 18</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="adults" value="2" name="age_group[]">
			  <label class="form-check-label" for="adults">18 - 45</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="senior" value="3" name="age_group[]">
			  <label class="form-check-label" for="senior">45+</label>
			</div>
		</div>

		<div class="form-group">
	      	<div class="form-check confirmBtn">
	        	<input class="form-check-input yellowBtn bottomBtn" type="submit" name="GetResult" value="OK!">
	      	</div>
	    </div>
	</form>
    <!--form ends-->



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/animations.js"></script>
</body>
</html>

<?php
}
else
{
  header("location:userlogin.html"); 
}
mysqli_close($conn);
?>
