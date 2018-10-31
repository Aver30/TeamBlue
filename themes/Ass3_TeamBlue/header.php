<html>
<head>
	<title><?php wp_title( '-', true, 'right' ); bloginfo( 'name' ); ?></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:700" rel="stylesheet">

	<?php wp_head();
 ?>	<!-- Put this before closing head-->
</head>

<body>
	<div class="container-fluid">
		<img src="wp-content/themes/Ass3_TeamBlue/LogoBackground2.png" style="height: 140px; width:500px;">
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
