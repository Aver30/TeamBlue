<html>
<head>
	<title><?php wp_title( '-', true, 'right' ); bloginfo( 'name' ); ?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:700" rel="stylesheet">

	<style>

	#body {background-image: linear-gradient(to bottom right, #757575, #3498db, #e67e22); padding: 0.001vh;}

	#foreground {background-color: white;margin-top: 2.9vh;margin-left: 1.5vw;
	  margin-right: 1.5vw;margin-bottom: 2.9vh;box-shadow: 0 8px 17px 0 rgba(0, 0, 0, .2), 0 6px 20px 0 rgba(0, 0, 0, .15);}

	#subscribe {background-color: #424242;height: 25vh;}

	#subscribebutton {padding-left: 2vw;}

	#button-addon2 {border-radius: 0px;border: None;color: #424242;background-color: #e67e22;}

	#button-addon2:hover {opacity: 0.7;}

	#input-email {border-radius: 0px;border-top: None;border-left: None;border-right: None;
		border-width: thick;color: #e67e22;background: transparent;}

	#subscriber-box {padding-right: 100px;}

	.fa {padding: 10px;}

	h2 {color: #e67e22;font-family: 'Josefin Sans';}

	#fb {font-size: 50px;color: #ecf0f1;}

	#fb:hover {color: #e67e22;font-size: 40px;border: None;text-decoration: None;}

	#twitter {font-size: 50px;color: #ecf0f1;}

	#twitter:hover {color: #e67e22;font-size: 40px;border: None;text-decoration: None;}

	#instagram {font-size: 50px;color: #ecf0f1;}

	#instagram:hover {color: #e67e22;font-size: 40px;border: None;text-decoration: None;}

	#google {font-size: 50px;color: #ecf0f1;}

	#google:hover {color: #e67e22;font-size: 40px;border: None;text-decoration: None;}

	#youtube {font-size: 50px;color: #ecf0f1;}

	#youtube:hover {color: #e67e22;font-size: 40px;border: None;text-decoration: None;}

	#advert {height: 25vh;}

	#sponser {background-color: #424242;height: 25vh;}

	</style>

  <?php wp_head();
 ?>	<!-- Put this before closing head-->
</head>

<body>
	<div class="row no-gutters" style="background-color: white">
			<div class="col-sm-5">
			<div style="margin-bottom:0">
				<img src="wp-content/themes/Ass3_TeamBlue/LogoBackground2.png" style="height: 140px; width:100%">
				</div>
			</div>
	</div>
	<!-- This gets the header from the WP. But we want the Logo as the header.
  <header>
    <h1><a href="<?php bloginfo( 'url' ); ?>"><?php bloginfo( 'name' ) ?></a></h1>
  </header>
	-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
      <a class="navbar-brand" href="#">HRAFF</a>

      <!-- Toggler/collapsibe Button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Navbar links -->
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
			 <?php
						wp_nav_menu($arg = array (
							'theme_location' => 'primary',
							'menu_class' => 'navbar-nav'

						));
				?>

		</div>


	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>

				<!--

				<ul class="navbar-nav">
			      <li class="nav-item">
			        <a class="nav-link" href="#">Link 1</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Link 2</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Link 3</a>
			      </li>
				 	</ul>

			-->


	</nav>
<!-- Not ssure how this is needed leaving it here just incase we need it later
  <nav>
    <?php wp_nav_menu( [ 'theme_location' => 'main-menu' ] ); ?>
  </nav>
-->

<div class="container-fluid" id="body">

	  <div id="foreground"><br>
