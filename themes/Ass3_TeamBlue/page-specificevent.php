<?php
  /* Template Name: Specific Event */
  get_header();
?>

  <?php

      echo '<div class="fill">';
      // This Provides the Event Post ID.
      $var_value = $_GET["?name"];
      // $event_post = get_post($var_value); // not the best way
      $args = array('post_type'=> 'event', 'p' => intval($var_value));
      $queryPost = new WP_Query($args); // This Works

      $queryPost->the_post();

      $event_name = get_field('event_name');
      $event_date = get_field('event_date');
      $event_image = get_field('event_image');
      $event_location = get_field('event_city');
      $event_des = get_field('event_full');
      $event_reviewer = get_field('event_reviewer');
      $event_review = get_field('event_review');


      // This Prints Image.
      echo '<img src="';
      print_r($event_image);
      echo '" style="width: 10rem">';

     // End row
     echo '</div>';

     // event quote
     echo '<div>';
       echo '<h4>"';
       print_r($event_review);
       echo '"</h4>';
     echo'</div>';

     echo '<div>';
     print_r($event_des);
     echo '</div>';

  ?>

<button>Book Tickets</button>

</div>

<?php
  get_footer();
?>
