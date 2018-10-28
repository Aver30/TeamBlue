<!doctype html>
<!-- https://www.proteusthemes.com/blog/displaying-custom-post-types-templates-querying/ -->
<?php
get_header();

?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->
<!-- Add Filter Options -->
<div class="row">
  <div class="container" style="margin-top: 40px">

    <form class="form-inline">
      <select  method="post" class="form-control col-sm-3 " name='city' style="margin-right: 20px">
        <option value="">All Locations</option>
        <option value="Melbourne">Melbourne</option>
        <option value="Canberra">Canberra</option>
      </select>

      <select onchange="topicchange(value)" class="form-control col-sm-3" name='topic' style="margin-right: 20px">
        <option value="">All Topics</option>
        <option value="Conflict">Conflict</option>
        <option value="Woman Rights">Woman Rights</option>
        <option value="Woman">Woman</option>
      </select>

      <select onchange="typechange(value)" class="form-control col-sm-3 " name='type' style="margin-right: 20px">
        <option value="">All Types</option>
        <option value="Film">Film</option>
        <option value="Music">Music</option>
        <option value="Article">Article</option>

      </select>

     <button type="submit" name='' class="btn btn-primary mb-2">Filter</button>
    </form>


  </div>
</div>



<!-- Print Custom Post Tiles -->
<!-- TO BE CONTINUED -->
<div id="AllEvents"  class="container" style="margin-top: 40px">
<?php

function listAllEvents(){
  $args = array('post_type'=> 'event');


    $location = $_GET['city'];
    $type = $_GET['type'];
    $topic = $_GET['topic'];
    $GLOBALS['gtype'] = $type;
    if($location == ''){
      $location = array('Melbourne', 'Canberra');
    }
    if ($topic == ''){
      $topic = array('Conflict','Woman Rights', 'Woman');
    }
    if ($type == ''){
      $type = array('Film', 'Article', 'Music');
    }

    $args = array(
      'post_type' => 'event',
      'tax_query' => array(
        array(
          'taxonomy' => 'city',
          'field' => 'name',
          'terms' => $location
        ),
        array(
          'taxonomy' => 'topic',
          'field' => 'name',
          'terms' => $topic

        ),
        array(
          'taxonomy' => 'event_type',
          'field' => 'name',
          'terms' => $type
        )
      )
    );

  $events = new WP_Query($args);
  if ($events->have_posts()):



    echo  '<div class="card-columns">';

          while( $events->have_posts() ) :
            $events->the_post();

            //<!-- For Each Post -->
            echo  '<div class="col-sm-4">';
            echo '<div class="card" style="width: 18rem; height: 28rem;">';

                  // Construct url with event ID.
                  $eventname = get_the_ID();

                  $url = set_url_scheme(
                        'http://' . 'localhost:3157/teamblue/' . '?page_id=6&?name=' . strval($eventname)
                  );


                  // This is how u print Image
                  $image = get_field('event_image');

                  echo '<img src="';
                  print_r($image);
                  echo '" style="width: 18rem">';


                  echo '<div class="card-body">';
                  $event_name = the_field('event_name');

                  echo '<h5 class="card-title"> '.$event_name.'</h5>';
                  $event_description = the_field('event_description');
                  echo '<p class="card-text">'. $event_description .' </p>';

                  echo '<a href="'. $url .'" class="btn btn-primary">More..</a>';
                  echo '</div>';
                echo '</div>';

              echo '</div>';

          endwhile;
          wp_reset_postdata();
          print_r($run);
      echo '</div>';
    echo '</div>';


    else :
        esc_html_e( 'No testimonials in the diving taxonomy!', 'text-domain' );
    endif;
}


listAllEvents();

?>









<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>
