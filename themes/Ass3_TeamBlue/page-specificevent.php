<?php
  /* Template Name: Specific Event */
  get_header();
?>

  <?php
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


      echo '<h1 style="font-weight: bold;text-align: center; margin-left: 2vw; margin-right: 2vw;">';
        print_r($event_name);
      echo '</h1>';


      echo '<div class="fill">';
      // This Prints Image.
      echo '<img src="';
      print_r($event_image);
      echo '">';

      echo '</div>';

      echo '<div style="font-weight: bold;text-align: center; margin-left: 2vw; margin-right: 2vw;">"';
      print_r($event_review);
      echo '"</div>';
      echo '<div style="font-weight: bold;text-align: center;">-';
      print_r($event_reviewer);
      echo '</div>';
      echo '<br>';

      echo'<div class="row">';

       // event quote
       echo '<div class="col-sm-6">';
           echo '<div style="text-align: center; margin-left: 2vw; margin-right: 2vw;">';
           print_r($event_des);
           echo '</div>';

       echo'</div>';

       echo '<div class="col-sm-6">';
        echo '<div style="font-weight: bold; text-align: center; margin-left: 2vw; margin-right: 2vw;">When</div>';

         echo '<div style="text-align: center; margin-left: 2vw; margin-right: 2vw;">';
         $format_in = 'F j, Y'; // the format your value is saved in (set in the field options)
         $format_out = 'F j, Y'; // the format you want to end up with
         $date = DateTime::createFromFormat($format_in, get_field('event_date'));
        print_r($date->format( $format_out));
         echo '</div>';

         echo '<br>';

         echo '<div style="font-weight: bold; text-align: center; margin-left: 2vw; margin-right: 2vw;">Where</div>';

         echo '<div style="text-align: center; margin-left: 2vw; margin-right: 2vw;">';
          print_r($event_location);
         echo '</div>';


       echo'</div>';


     // end row
     echo '</div>';

  ?>



  </div>

<?php
  get_footer();
?>
