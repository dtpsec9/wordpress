<?php get_header(); ?>
<section class="post-template-default single single-post postid-448 single-format-standard right-sidebar">
   <?php if (have_posts()) : while(have_posts()) : the_post(); ?>
   <div class="off-canvas-wrapper">
      <div id="page" class="hfeed site">
         <div id="content" class="site-content" tabindex="-1">
            <div class="container">
               <div class="site-content-inner">
                  <div class="woocommerce"></div>
                  <div id="primary" class="content-area">
                     <main id="main" class="site-main">
                        <article id="post-448" class="post-448 post type-post status-publish format-standard has-post-thumbnail hentry category-education category-learn category-skill category-travel tag-adwords tag-trade">
                           <?php if (has_post_thumbnail()) : ?>
                           <div class="media-attachment">
                              <div class="post-thumbnail"><?php the_post_thumbnail(); ?></div>
                           </div>
                           <header class="entry-header">
                              <div class="entry-meta">
                                 <div class="post-author-info">
                                    <div class="media">
                                       <div class="media-left media-middle"> <a href="javascript:void(0)"> <?php echo get_avatar( get_the_author_meta( 'ID' ) , array('class' => 'avatar') ); ?> </a></div>
                                       <div class="media-body">
                                          <h4 class="media-heading"><a href="javascript:void(0)"><?php $author_id=$post->post_author; ?>
                                             <?php echo the_author_meta( 'display_name' , $author_id ); ?>
                                             </a>
                                          </h4>
                                       </div>
                                    </div>
                                 </div>
                                 <span class="posted-on"><a href="javascript:void(0)" rel="bookmark"><time class="entry-date published" datetime="2018-08-09T13:28:00+00:00"><?php echo get_the_modified_date( 'F j, Y' ); ?></time> <time class="updated" datetime="2018-09-06T06:09:14+00:00"><?php echo get_the_modified_date( 'F j, Y' ); ?></time></a></span> <span class="comments-link"><a href="javascript:void(0)"><?php $commentscount = get_comments_number(); echo $commentscount; ?> Comments</a></span> <span class="cat-links"> <?php $post_id = get_the_ID(); $category_detail=get_the_category($post_id);//$post->ID
                                    foreach($category_detail as $cd){
                                    echo $cd->cat_name;
                                    } ?></span>
                              </div>
                              <h1 class="entry-title"><?php echo get_the_title(); ?></h1>
                           </header>
                           <div class="entry-content">
                              <?php the_content(); ?> 
                           </div>
                        </article>

                        <nav id="post-navigation" class="navigation post-navigation" role="navigation" aria-label="Post Navigation">
                           <h2 class="screen-reader-text">Post navigation</h2>
                           <div class="nav-links">
                              <div class="nav-previous">

                               
                                    
                                    <div class="jobhunt-post-nav">
                                       <div class="post-nav-icon icon-prev"> <span class="nav-icon"><i class="la la-long-arrow-left"></i></span></div>
                                       <div class="jobhunt-post-title prev">
                                         
                                             <?php 
                                             
                                             if ( get_previous_post() ) {
                                             ?>
                                             
                                          <span class="post-title">
                                             
                                                <?php previous_post_link(); ?>
                                             
                                               </span>
                                              <?php  
                                             } 
                                              else {
                                                ?>
                                                 
                                          <span class="post-title">
                                                
                                                <?php next_post_link(); ?>
                                             
                                               </span>
                                              <?php
                                              }

                                                ?>
                                         
                                       </div>

                                    </div>
                                 
                              </div>
                           </div>
                        </nav>
                        <section id="comments" class="comments-area" aria-label="Post Comments">
                           <h2 class="comments-title"> <span class="comments-link"><?php $commentscount = get_comments_number(); echo $commentscount; ?> Comments</span></h2>
                           <ol class="comment-list">
                              <?php foreach (get_comments() as $comment): 
//echo "<pre>";print_r($comment);
                              	?>
                              <li class="comment even thread-even depth-1 parent" id="comment-10">

                                 <div class="comment_container">
                                     
                                <?php echo get_avatar( get_the_author_meta( 'ID' ) , array('class' => 'avatar') ); ?>
                                 <div class="comment-text">
                                    <div class="meta"> <strong class="woocommerce-review__author"><?php echo $comment->comment_author; ?></strong> <time class="woocommerce-review__published-date" datetime="2018-08-10T06:00:40+00:00"><?php 
                                             echo date('F j, Y',strtotime($comment->comment_date)); 
                                             ?></time></div>
                                    <div id="div-comment-meta-10" class="comment-content">
                                       <div class="description">
                                             <p><?php echo $comment->comment_content; ?></p>
                                            
                                       </div>
                                    </div>
                                 </div>
                                  
                              </div>



                                
                              </li>
                              <?php endforeach; ?>
                           </ol>
                            <?php 
               comment_form();
            ?>
                        </section>
                     </main>
                  </div>
                   <div id="secondary" class="widget-area" role="complementary">
                 <?php get_sidebar(); ?>
              </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <?php endif; ?>
   <?php endwhile; ?>
   <?php endif; ?>
</section>
<?php get_footer(); ?>