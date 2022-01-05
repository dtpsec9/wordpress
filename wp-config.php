<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'omizzy_omblog' );

/** MySQL database username */
define( 'DB_USER', 'omizzy_omblog' );

/** MySQL database password */
define( 'DB_PASSWORD', 'fzz6J0K)SINm' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define("FS_METHOD", "direct");

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'r)jD|Q*]( }/HaZEL:Nh BO|AUa4@tx&ya%U%R!;j{BJxm2{75K^o?./gw;7%p%{' );
define( 'SECURE_AUTH_KEY',  '>X(fO6[N)b2OJQg<ERUl$@3NoQy$GEwG}*O8I=0KU,VeVg?:`|(Q.p/(uB$7]hTX' );
define( 'LOGGED_IN_KEY',    '3^]egwCOHyO[|:e#~f+2d7eV%_EdSSUNY`Ead%>:F/}NBk/Y+0=b>@GU1F$aU4X{' );
define( 'NONCE_KEY',        '`dvVkaDO`5j-X2U+n BFURAOG||NP0mVfmnL> %%rh_XW4ID4G_*$Y78 Hj/g{R`' );
define( 'AUTH_SALT',        '43C1.=~VKZ_JUk(j2E#[xkg|7vx;u8 u4cbIr-as[Q`>m}D*;r[E:J3U9jS9`BtU' );
define( 'SECURE_AUTH_SALT', '::B4^TXNDle.d*O?psq}=&6t9-MhUvF)j>{2=/V.J|_eF$Qvc[g5^$a_yfw1^_@$' );
define( 'LOGGED_IN_SALT',   'k=1LnZwY=x]e|fDh[T#F5c1(-$(ZnL[503Hg 9]r7DJE? 7ca/tiF`4O5Cn7`:^W' );
define( 'NONCE_SALT',       'F]7SmW?k6nR/)L_{KUx#O`:q;IQ4R([uEYR=7$drhN>s`]DF:DJHmS`dVXKCph-f' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'owpz_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
