<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->

  <h2><?php wp_title( '' ); ?></h2>
  <!-- This is where it checks all posts and prints them.-->
  <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>


    <article>

      <?php if ( is_archive() || is_home() ) { ?>
        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
        <?php
        the_post_thumbnail( 'thumbnail' );
        the_excerpt();
      } else {
        the_post_thumbnail( 'large' );
        the_content();
      }?>

    </article>

  <?php endwhile; else : ?> <!-- Loop End here, Else Start -->

  <h2>Error</h2>
  <p>Sorry, no posts matched your criteria.</p>

  <?php endif; ?>

<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>
