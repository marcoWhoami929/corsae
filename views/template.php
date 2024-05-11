<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="google" content="notranslate" />
	<title>CORSAE</title>

	<meta content="" name="description">
	<meta content="" name="keywords">


	<!-- Favicons -->
	<link rel="icon" type="image/x-icon" href="views/images/logo.ico">
	<link href="views/images/logo.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="views/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="views/plugins/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="views/plugins/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="views/plugins/quill/quill.snow.css" rel="stylesheet">
	<link href="views/plugins/quill/quill.bubble.css" rel="stylesheet">
	<link href="views/plugins/remixicon/remixicon.css" rel="stylesheet">
	<!--<link href="views/plugins/simple-datatables/style.css" rel="stylesheet">-->
	<link rel="stylesheet" type="text/css" href="views/plugins/datatable/css/datatable.css">

	<!-- Template Main CSS File -->
	<link href="views/css/style.css" rel="stylesheet">

	<!-- jQuery 3 -->
	<script src="views/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="views/plugins/jquery-ui/jquery-ui.js"></script>
	<!-- Bootstrap js-->
	<script src="views/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- SweetAlert js-->
	<script src="views/plugins/sweetalert/sweetalert.js"></script>
	<!-- Datatable js-->
	<script src="views/plugins/datatable/js/datatable.js"></script>
</head>

<body>
	<?php
	if (isset($_SESSION["sessionCorsae"]) && $_SESSION["sessionCorsae"] === "ok") {
		$carpeta = "views/moduls/";
		if (isset($_GET["ruta"])) {
			$class = $carpeta . $_GET["ruta"] . '.php';
		} else {
			echo "<script> window.location = '" . $_SESSION["template"] . "'; </script>";
		}

		if (!file_exists($class)) {
			include "moduls/404.php";
		} else {
			echo '<div class="wrapper">';

			include "moduls/header.php";
			include "moduls/sidebar.php";

			if (isset($_GET["ruta"])) {

				$carpeta = "views/moduls/";
				$class = $carpeta . $_GET["ruta"] . '.php';

				if (!file_exists($class)) {

					include "moduls/404.php";
				} else {

					include $class;
				}
			} else {
				include "moduls/dashboard.php";
			}

			echo '</div>';
			include "moduls/footer.php";
		}
	} else {
		include "moduls/login.php";
	}

	?>
	<!-- Vendor JS Files -->
	<script src="views/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="views/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="views/plugins/chart.js/chart.umd.js"></script>
	<script src="views/plugins/echarts/echarts.min.js"></script>
	<script src="views/plugins/quill/quill.min.js"></script>
	<script src="views/plugins/tinymce/tinymce.min.js"></script>
	<script src="views/plugins/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="views/js/main.js"></script>
	<script src="views/js/clock.js"></script>
</body>

</html>