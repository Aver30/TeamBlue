<?php
  /* Template Name: Specific Event */
  get_header();
?>

<div class="d-flex justify-content-lg-center">



  <?php
  echo '<dic class="row">';   // Row to put image in
    echo '<div class="col-sm-2"></div>';
    echo '<div class=" col-sm-8 d-flex justify-content-lg-center">';

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
      echo '" style="width: 30rem">';

      echo '<br>';

    echo '</div>';    // End Col-sm-8
    echo '<div class="col-sm-2"></div>';

  echo '</div>';

  echo '<div class="row">';       // New To Add Text In

    echo '<p class="text-centre">';
    print_r($event_type . $event_topic);
    echo '<p>';
  echo '</div>';

   // End row

  ?>


</div>

<?php
  get_footer();
?>
