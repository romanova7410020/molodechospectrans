<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mss_bd' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',         '&a7)0enC  t0Iz}l)|g%ee@eci@`+Y]jUM_cXFmtIRbPg0L(k|yE|w[{R%zMV[;1' );
define( 'SECURE_AUTH_KEY',  'U8tNB28%tE3}^8,j%PUyvWF8 rs!d#aPGw.<@w9YfQFOWc8RX!p,D/?b `&@ZMMN' );
define( 'LOGGED_IN_KEY',    'aA9rjY;aZP!qoAdCZuEt;e=nl62(J&[X!qOZ5l%]>VG_]m8kn]trGPxymCvA`ABk' );
define( 'NONCE_KEY',        'Q:G^z rU .]~Kr?q,!?n9`e0r<),#1|-[-.M4k=Jn3NXq64t*!AbhnD7]_2%e|ea' );
define( 'AUTH_SALT',        ' *hhj~]~r|BmjpEMcnP(|5JH[K2ck)y={vR3Z5t&V$@[O@^P3Ezh%j?!9VL_-M|:' );
define( 'SECURE_AUTH_SALT', '2pCdbg]fI8NNe;#m%xl{=)PA,,2N%=2a9l3V1>i3;Gw&.}DB84DXs</X[c$mX[[f' );
define( 'LOGGED_IN_SALT',   'dS>&!}F r8l)?^&{dt]6$o6@jro4(`fSgR+}kM`J{6OWVH(}vX^cQjHoFC)>cX<Q' );
define( 'NONCE_SALT',       'SWL@aue|[)+<=HI6%kEjPt#?.6ILu23..%$H>rv/CF^$1Us6zA.RR]fm* :OF S:' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
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
