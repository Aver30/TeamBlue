<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'teamblue');

/** MySQL database username */
define('DB_USER', 'admin');

/** MySQL database password */
define('DB_PASSWORD', 'fit3157-2018s2');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.eIMDShXNh5y^zAXU@N}}dw>mk9/iTOH|CMl)+QCfn}d!0ClFgZc1xW&bE9#ZnHa');
define('SECURE_AUTH_KEY',  'Jv,m/(Gte&<a8#}ufNDC2OVIFwJX[7(b;.#sENo[o+r.SoBTK= CbT|x!+8io_-9');
define('LOGGED_IN_KEY',    'r,[|:`EMiSH/>[aD^%cK|owgAtZR&+(UR&C.c{iTI%obb{p[Se_OKoeL<GcoGI6@');
define('NONCE_KEY',        '}=V}xO,c!YA9O.WgTK4]FBNRBD@d(*Va7Xe(sVhdS(<k1@uuwl|`e?-qZa!Xm)s}');
define('AUTH_SALT',        'wnz:;)0z]ZoO+%e({770oUTKg4FLX9?Lb%7*xHZ|%EK)@2:AxcI&(*W5<1l1(XP~');
define('SECURE_AUTH_SALT', 'P!`_y:u9,L g8L`ISaOtxqM/V?-BrZ_*qT66. JBD7H wpey{OJl$ZCr&X65{_WM');
define('LOGGED_IN_SALT',   '@!ciK!p>QkO2vkC10%:k^<{0tP9Ff0S~veQ[w!FiM%VR*8ANB*XnC_Yj3r+jIZ+N');
define('NONCE_SALT',       '6)L9c?bjg=e^K`qD/wB.M_O<Jz0={J-.OQ:r.xSo:F@p.Q&;s&ql<d[kciV<-XL8');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
