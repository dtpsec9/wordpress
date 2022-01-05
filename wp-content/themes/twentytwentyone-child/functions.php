<?php
/**
 * Functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

/**
 * Enqueue scripts and styles.
 *
 * @since Twenty Twenty-One 1.0
 *
 * @return void
 */
function chlic_twenty_twenty_one_scripts() {
	// Note, the is_IE global variable is defined by WordPress and is used
	// to detect if the current browser is internet explorer.


	
	wp_enqueue_style( 'twenty-twenty-one-style', get_stylesheet_directory_uri() . '/assets/css/style.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-responsive', get_stylesheet_directory_uri() . '/assets/css/responsive.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-chosen', get_stylesheet_directory_uri() . '/assets/css/chosen.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-colors', get_stylesheet_directory_uri() . '/assets/css/colors.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-icon-css', get_stylesheet_directory_uri() . '/assets/css/icons.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-bootstrap', get_stylesheet_directory_uri() . '/assets/css/bootstrap.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-fontawesome', get_stylesheet_directory_uri() . '/assets/css/font-awesome.min.css', array(), wp_get_theme()->get( 'Version' ) );
	wp_enqueue_style( 'twenty-twenty-one-lineawesome', 'https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css', array(), wp_get_theme()->get( 'Version' ) );


	// Responsive embeds script.
	wp_enqueue_script(
		'twenty-twenty-one-jquery-script',
		get_stylesheet_directory_uri() . '/assets/js/jquery.min.js',
		array( 'twenty-twenty-one-jscript-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);

	wp_enqueue_script(
		'twenty-twenty-one-modernizr-script',
		get_stylesheet_directory_uri() . '/assets/js/modernizr.js',
		array( 'twenty-twenty-one-modernizr-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);


	wp_enqueue_script(
		'twenty-twenty-one-script-script',
		get_stylesheet_directory_uri() . '/assets/js/script.js',
		array( 'twenty-twenty-one-script-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);

	wp_enqueue_script(
		'twenty-twenty-one-bootstrap-script',
		get_stylesheet_directory_uri() . '/assets/js/bootstrap.min.js',
		array( 'twenty-twenty-one-bootstrap-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);

	wp_enqueue_script(
		'twenty-twenty-one-wow-script',
		get_stylesheet_directory_uri() . '/assets/js/wow.min.js',
		array( 'twenty-twenty-one-wow-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);
	wp_enqueue_script(
		'twenty-twenty-one-select-script',
		get_stylesheet_directory_uri() . '/assets/js/select-chosen.js',
		array( 'twenty-twenty-one-select-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);
	wp_enqueue_script(
		'twenty-twenty-one-slick-script',
		get_stylesheet_directory_uri() . '/assets/js/slick.min.js',
		array( 'twenty-twenty-one-slick-jsc' ),
		wp_get_theme()->get( 'Version' ),
		true
	);
}
add_action( 'wp_enqueue_scripts', 'chlic_twenty_twenty_one_scripts' );


/***********************************************************************************************/
/* Remove the brackets, ellipsis and hellip on excerpt */
/***********************************************************************************************/
function trim_excerpt($text) {
	$text = str_replace('[hellip;]', '...', $text);
	return $text;
   }
add_filter('get_the_excerpt', 'trim_excerpt');

add_filter("the_content", "plugin_myContentFilter");

  function plugin_myContentFilter($content)
  {
    // Take the existing content and return a subset of it
    return substr($content, 0, 200);
  }

  
function twenty_twenty_one_the_posts_navigation2() {
	the_posts_pagination(
		array(
			'before_page_number' => esc_html__( 'Page', 'twentytwentyone' ) . ' ',
			'mid_size'           => 0,
			'prev_text'          => sprintf(
				'%s <span class="nav-prev-text">Prev</span> ',
				is_rtl() ? twenty_twenty_one_get_icon_svg( 'ui', 'arrow_right' ) : twenty_twenty_one_get_icon_svg( 'ui', 'arrow_left' ),
				wp_kses(
					__( 'Newer <span class="nav-short">posts</span>', 'twentytwentyone' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				)
			),
			'next_text'          => sprintf(
				'<span class="nav-next-text">%s</span>%s',
				wp_kses(
					__( 'Next <span class="nav-short"></span>', 'twentytwentyone' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				),
				is_rtl() ? twenty_twenty_one_get_icon_svg( 'ui', 'arrow_left' ) : twenty_twenty_one_get_icon_svg( 'ui', 'arrow_right' )
			),
		)
	);
}

?>