<html class=" js no-touch cssanimations csstransitions">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset'); ?>">
		
		<title><?php wp_title('|', true, 'right');?><?php bloginfo('name');?></title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">
		<meta name="keywords" content="">
		<meta name="author" content="">
		<!-- Styles -->
		
		
        <?php wp_head();?>
	</head>
    <body <?php body_class(); ?>>
	<section class="overlape">
	<div class="block no-padding">
		<div data-velocity="-.1" style="background: url(<?php echo get_stylesheet_directory_uri(); ?>/assets/images/mslider1.jpg) repeat scroll 50% 422.28px transparent;" class="parallax scrolly-invisible no-parallax">
		</div><!-- PARALLAX BACKGROUND IMAGE -->
		<div class="container fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="inner-header inner-bnr">
						<h3 class="mb-3"> Blog </h3>						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<header class="stick-top forsticky">
	<!-- Placement v2 -->
<klarna-placement data-key="top-strip-promotion-auto-size" data-locale="en-US"> </klarna-placement>
<!-- end Placement -->

<div class="menu-sec">
<div class="container">
<div class="logo">

	<a href="<?php echo home_url(); ?>" title=""><img class="hidesticky" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo.png" alt="<?php bloginfo('name');?>"><img class="showsticky" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo10.png" alt="<?php bloginfo('name');?>"></a>
	</div><!-- Logo -->
	<div class="btn-extars">
		
		<a href="https://omizzy.com/#/login" title="" class="post-job-btn"><i class="la la-plus"></i>Hire Now</a>
		<a href="https://omizzy.com/#/jobs" title="" class="post-job-btn"><i class="la la-plus"></i>Open Jobs</a>
		</div><!-- Btn Extras -->
	
    <?php wp_nav_menu(
			array(
				'theme_location'  => 'primary',
				'menu_class'      => 'menu-wrapper',
				'items_wrap' => '<nav><ul>%3$s<span></span></ul></nav>'
				
				
			)
		);?>
		
<!-- Menus -->
		</div>
	</div>
</header>