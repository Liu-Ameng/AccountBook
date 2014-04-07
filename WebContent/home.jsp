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
<link href="css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="css/home.css" rel="stylesheet">
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
				<!--           输入数据页面                                   -->
				<img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:NEW BILL"
					alt="NEW BILL slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>NEW BILL</h1>

						<form role="form" action="submit.do" method="post">
							<div class="contatiner">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputEmail1">What</label>
											<input type="text" class="form-control" id="titleInput"
												name="title_name" placeholder="Descripe the bill">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Who</label>
											<input type="text" class="form-control" id="personInput"
												name="person_name"
												placeholder="Who is(are) involved. Use '&' to split persons.">
										</div>
										<div class="form-group">
											<label for="text2">Where</label>
											<input type="text" class="form-control" id="placeInput"
												name="place_name" placeholder="Where it happens?">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="datePicker1">When</label>
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-calendar"></i></span>
												<input type="text" class="form-control form_datetime"
													name="datetime" size="16" value="2014-01-01 16:30:00" readonly>
											</div>
										</div>

										<div class="form-group">
											<label for="text2">How much</label>
											<div class="input-group">
												<span class="input-group-addon">$</span>
												<input type="text" class="form-control" name="price"
													placeholder="The Money">
											</div>
										</div>
									</div>
								</div>
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
	<script src="js/bootstrap-datetimepicker.js"></script>

	<script type="text/javascript">
		$(".form_datetime").datetimepicker({
			format : "yyyy-mm-dd hh:ii:ss"
		});
	</script>
</body>
</html>