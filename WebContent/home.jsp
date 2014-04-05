<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Your Account Book</title>

<%@ include file="LINKS.jsp"%>
</head>
<body>
	<%@ include file="NAV.jsp"%>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p>
							Note: If you're viewing this page via a
							<code>file://</code>
							URL, the "next" and "previous" Glyphicon buttons on the left and
							right might not load/display properly due to web browser security
							rules.
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:NEW INCOME"
					alt="New income slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Congratulation for earning some money!</h1>

						<form role="form">
							<div class="form-group">
								<label for="exampleInputEmail1">Who</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									name="person_name"
									placeholder="Who is(are) involved. Use '&' to split persons.">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								<input type="datetime" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<button type="submit" class="btn btn-lg btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<div class="item">
				<img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<i class="glyphicon glyphicon-chevron-left"></i>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
	</div>
	<!-- /.carousel -->

	<div class="container" id="body">
		<div id="two_main_button">
			<div class="big_button_div "></div>
			<div class="big_button_div "></div>
		</div>
	</div>
	<div class="contatiner">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<button type="button" class="btn btn-success btn-xlarge btn-block">
					<i class="glyphicon glyphicon-plus"></i> One income
				</button>
			</div>
			<div class="col-md-5">
				<button type="button" class="btn btn-warning btn-xlarge btn-block">
					<i class="glyphicon glyphicon-minus"></i> One expense
				</button>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="http://cdn.bootcss.com/holder/2.0/holder.min.js"></script>

</body>
</html>