<?php 



add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );



function theme_name_scripts() {
    wp_enqueue_style( 'style', get_template_directory_uri() . '/assets/style.css' );
    
    wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css2?family=Great+Vibes&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Manrope:wght@200..800&family=Mulish:ital,wght@0,200..1000;1,200..1000&family=Oswald:wght@200..700&display=swap', array(), null );
    
    wp_enqueue_script( 'index', get_template_directory_uri() . '/assets/index.js', array(), null, true );
}

add_theme_support( 'post-thumbnails' );   
add_theme_support( 'title-tag' );
add_theme_support( 'custom-logo' );



function mss_add_custom_css() {
    ?>
    <style>
    .mainview {
        background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/mainview.png');
    }
		.calc{
  			background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/back.png');
		}
		.footer{
				background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/footer.png');
			}
			.calc_pop2 {
				background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/popback.png');
			}
			@media screen and (max-width: 360px) {
				.mainview {
					background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/mainviewsmalll.png');
			}

						}
    </style>
    <?php
}
add_action('wp_head', 'mss_add_custom_css');

//техника
function create_equipment_cpt() {
  register_post_type('equipment', [
    'labels' => [
      'name' => 'Техника',
      'singular_name' => 'Техника'
    ],
    'public' => true,
    'has_archive' => true,
    'supports' => ['title', 'thumbnail', 'editor', 'custom-fields'], 
    'menu_icon' => 'dashicons-car',
    'rewrite' => ['slug' => 'equipment']
  ]);

  register_taxonomy('equipment_category', 'equipment', [
    'labels' => ['name' => 'Категории техники'],
    'hierarchical' => true,
    'rewrite' => ['slug' => 'equipment-category']
  ]);


  add_action('add_meta_boxes', 'add_equipment_badge_meta_box');
}

add_action('init', 'create_equipment_cpt');

function add_equipment_badge_meta_box() {
  add_meta_box(
    'equipment_badge',
    'Бейдж техники',
    'equipment_badge_callback',
    'equipment',
    'side',
    'high'
  );
}

function equipment_badge_callback($post) {
  wp_nonce_field('equipment_badge_nonce', 'badge_nonce');
  $badge = get_post_meta($post->ID, '_equipment_badge', true);
  ?>
  <select name="equipment_badge" id="equipment_badge">
    <option value="">Нет бейджа</option>
    <option value="Телескоп" <?php selected($badge, 'Телескоп'); ?>>Телескоп</option>
    <option value="Вездеход" <?php selected($badge, 'Вездеход'); ?>>Вездеход</option>
  </select>
  <?php
}

// Сохранение бейджа
add_action('save_post', 'save_equipment_badge');
function save_equipment_badge($post_id) {
  if (!isset($_POST['badge_nonce']) || !wp_verify_nonce($_POST['badge_nonce'], 'equipment_badge_nonce')) {
    return;
  }
  if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
  if (!current_user_can('edit_post', $post_id)) return;

  $badge = sanitize_text_field($_POST['equipment_badge'] ?? '');
  update_post_meta($post_id, '_equipment_badge', $badge);
}
