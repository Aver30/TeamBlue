<h2><?php wp_title( '' ); ?></h2>
<!-- This is where it checks all posts and prints them.-->
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

  <article>
    <p>
      <?php the_field('event_name'); ?>
    </p>


  </article>

<?php endwhile; else : ?> <!-- Loop End here, Else Start -->

<h2>Error</h2>
<p>Sorry, no posts matched your criteria.</p>

<?php endif; ?>
