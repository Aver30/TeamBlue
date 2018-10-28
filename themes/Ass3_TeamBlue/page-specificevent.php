<?php
  /* Template Name: Specific Event */
  get_header();
?>

<div>
  <?php
  // This Provides the Event Post ID.
  $var_value = $_GET["?name"];
  // $event_post = get_post($var_value); // not the best way
  $args = array('post_type'=> 'event', 'p' => intval($var_value));
  $queryPost = new WP_Query($args); // This Works

  $queryPost->the_post();

  $event_name = get_field('event_name');
  $event_type = get_field('event_type');
  $event_des = get_field('event_description');
  $event_topic = get_field('event_topic');
  $event_image = get_field('event_image');
  $event_date = get_field('event_date');

  // This Prints Image.
  echo '<img src="';
  print_r($event_image);
  echo '" style="width: 18rem">';


  echo '<div class="container">';
  print_r($event_type . $event_topic);
  echo '</div>';

  ?>

</div>

<?php
  get_footer();
?>
