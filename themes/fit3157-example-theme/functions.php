<?php

// Enable 'Featured Image' in post/page editor
add_theme_support( 'post-thumbnails' );

// Define 'Main Menu' as a selectable location in the menu editor
register_nav_menus( [ 'main-menu' => 'Main Menu' ] );

// Hook the default 'excerpt_length' action and run a custom function
add_filter( 'excerpt_length', 'custom_excerpt_length' );

// Return a custom length of 25 words 
function custom_excerpt_length() {
	return 25;
}

// Hook the default 'excerpt_more' action and run a custom function
add_filter( 'excerpt_more', 'custom_excerpt_link' );

// Return HTML to create a hyperlink that links to the full post
function custom_excerpt_link() {
	return ' <a href="'.get_permalink(). '">Read more...</a>';
}

?>