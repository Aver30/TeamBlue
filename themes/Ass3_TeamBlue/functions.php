<?php
  if(! function_exists ('TeamBlue_setup')):
      function TeamBlue_setup(){
        // Add title tag
        add_theme_support('title-tag');

      }
  endif;


  add_action('after_setup_theme', 'TeamBlue_setup');

  /*---- Register Menus ----*/

  function register_teamblue_menus(){

    // This is where the Menu is added
    register_nav_menus(
      array(
        'primary' => __('Primary Menu')
      )
    );
  }

  add_action('init', 'register_teamblue_menus');

  add_filter('query_vars', 'parameter_queryvars' );
  function parameter_queryvars( $qvars )
  {
  $qvars[] = 'yourvarname';
  return $qvars;
  }

wp_enqueue_style( 'style', get_stylesheet_uri());



?>
