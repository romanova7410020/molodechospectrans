<?php
/*
Template Name: Home

*/
?>

<?php get_header(); ?>
    <section class="hero">
      <div class="hero_wrap">
        <h1> <?php the_field('title'); ?></h1>
        <div class="hero_content">
          <p class="hero_text"><?php the_field('hero_text'); ?></p>
          <ul class="hero_advantage">
            <li class="hero_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/Icon.png" alt="icon">
              <span> Оператор/машинист</span>
            </li>
            <li class="hero_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/Icon.png" alt="icon">
              <span> Документы и договор</span>
            </li>
            <li class="hero_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/Icon.png" alt="icon">
              <span> Быстрый расчёт</span>
            </li>
            <li class="hero_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/Icon.png" alt="icon">
              <span> Выезд на объект</span>
            </li>
          </ul>
          <div class="hero_buttons">
            <label for="popup-toggle" class="get_btn">Получить расчёт</label>
            <a href="#equipment" class="select_btn">Подобрать технику</a>
          </div>
        </div>
      </div>
    </section>
    </div>
    <section class="stat">
      <div class="wrapper">
        <div class="stat_number">
          <div class="stat_item">
            <p class="item_nmb">7</p>
            <p class="item_text">единиц техники</p>
            <img src="<?php bloginfo('template_url');?>/assets/images/horicon.png" alt="horizontal green icon">
          </div>
          <div class="stat_item">
            <p class="item_nmb">6</p>
            <p class="item_text">ключевых районов</p>
            <img src="<?php bloginfo('template_url');?>/assets/images/horicon.png" alt="horizontal green icon">
          </div>
          <div class="stat_item">
            <p class="item_nmb">10</p>
            <p class="item_text">минут расчет</p>
            <img src="<?php bloginfo('template_url');?>/assets/images/horicon.png" alt="horizontal green icon">
          </div>
        </div>
        <div class="stat_tasks" id="tasks">
          <h2>Задачи, которые закрываем</h2>
          <div class="task_items">
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/cubs.png" alt="cubs">
                <img src="<?php bloginfo('template_url');?>/assets/images/1.png" alt="one">
              </div>
              <p class="task_text">Монтаж/демонтаж конструкций</p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/square.png" alt="square">
                <img src="<?php bloginfo('template_url');?>/assets/images/2.png" alt="two">
              </div>
              <p class="task_text">Погрузка/разгрузка и перемещение</p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/build.png" alt="build">
                <img src="<?php bloginfo('template_url');?>/assets/images/3.png" alt="three">
              </div>
              <p class="task_text">Установка ЖБИ и   металлоконструкций</p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/molot.png" alt="molot">
                <img src="<?php bloginfo('template_url');?>/assets/images/4.png" alt="four">
              </div>
              <p class="task_text">Фасад/кровля/электрика на <br> высоте</p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/tree.png" alt="tree">
                <img src="<?php bloginfo('template_url');?>/assets/images/5.png" alt="five">
              </div>
              <p class="task_text">Обрезка деревьев и обслуживание<br> </p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
            <div class="task_item">
              <div class="item_img">
                <img src="<?php bloginfo('template_url');?>/assets/images/car.png" alt="car">
                <img src="<?php bloginfo('template_url');?>/assets/images/6.png" alt="six">
              </div>
              <p class="task_text">Погрузочно-уборочные работы (Амкадор)</p>
              <img class="task_icon" src="<?php bloginfo('template_url');?>/assets/images/hor4icon.png" alt="horizontal 4 icon">
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="calc">
      <div class="wrapper">
        <h2>Рассчитаем стоимость под ваш объект</h2>
        <div class="calc_form2">
         <?php echo do_shortcode('[contact-form-7 id="8a3c5dd" title="контактная вид работ"]') ?>
</div>
      </div>
    </section>
    <section class="equipment" id="equipment">
  <div class="wrapper">
    <h2>Парк техники</h2>
    
    <div class="filters">
      <div class="filter_group">
        <button class="filter_btn active" data-category="all">Все</button>
        <button class="filter_btn" data-category="autocrane">Автокраны</button>
        <button class="filter_btn" data-category="lift">Автовышки</button>
        <button class="filter_btn" data-category="loader">Погрузчики</button>
      </div>
    </div>
    
   <div class="catalog">
  <?php
  $equipment = new WP_Query([
    'post_type' => 'equipment',
    'posts_per_page' => -1,
    'post_status' => 'publish'
  ]);
  
  while($equipment->have_posts()): $equipment->the_post();
    $terms = wp_get_post_terms(get_the_ID(), 'equipment_category');
    $category_slug = !empty($terms) ? $terms[0]->slug : 'all';
    
    $img = get_the_post_thumbnail_url(get_the_ID(), 'large');
    $full_content = apply_filters('the_content', get_the_content());
    $parts = preg_split('/<!--more-->/i', $full_content, 2);
    $type = trim(strip_tags($parts[0]));
    $purpose = isset($parts[1]) ? trim(strip_tags($parts[1])) : '';

    $badge = get_post_meta(get_the_ID(), '_equipment_badge', true);
  ?>
  <div class="catalog_item" data-category="<?php echo $category_slug; ?>">

    <?php if ($badge): ?>
  <span class="equipment-badge badge-<?php echo esc_attr($badge); ?>">
    <img class="badge-icon" src="<?php echo get_template_directory_uri(); ?>/assets/images/Iconlabel.png" alt="">
    <span class="badge-text"><?php echo esc_html($badge); ?></span>
  </span>
<?php endif; ?>
    
    <img class="equipment_img" src="<?php echo $img ?: bloginfo('template_url').'/assets/kc45729.png'; ?>" alt="<?php the_title(); ?>">
    <p class="equipment_title"><?php the_title(); ?></p>
    <div class="equipment_type"><?php echo get_post_meta(get_the_ID(), 'equipment_type', true); ?></div>
    <div class="equipment_purpose">
      <span>Подходит для:</span>
      <span><?php echo get_post_meta(get_the_ID(), 'equipment_purpose', true); ?></span>
    </div>
    <button class="calc_btn">Узнать стоимость
      <img src="<?php echo bloginfo('template_url'); ?>/assets/images/arrow.png" alt="arrow">
    </button>
  </div>
  <?php endwhile; wp_reset_postdata(); ?>
</div>

  </div>
</section>

    <section class="map">
      <div class="wrapper">
        <h2 id="examples">Почему с нами удобно</h2>
        <div class="reasons" >
          <div class="reason_item">
            <img src="<?php bloginfo('template_url');?>/assets/images/setting.png" alt="icon">
            <p>Подбор техники под задачу и условия подъезда</p>
          </div>
          <div class="reason_item">
            <img src="<?php bloginfo('template_url');?>/assets/images/calc.png" alt="icon">
            <p>Прозрачный расчёт стоимости</p>
          </div>
          <div class="reason_item">
            <img src="<?php bloginfo('template_url');?>/assets/images/list.png" alt="icon">
            <p>Работаем по договору, предоставляем документы</p>
          </div>
          <div class="reason_item">
            <img src="<?php bloginfo('template_url');?>/assets/images/dot.png" alt="icon">
            <p>Выезд по районам и по РБ (по согласованию)</p>
          </div>
        </div>
        <h2 id="geo">География работ</h2>
        <div class="map_container" >
          <div class="map_content">
            <img src="<?php bloginfo('template_url');?>/assets/images/map.jpg" alt="map">
          </div>
          <div class="map_city">
            <h3>Основные районы работы</h3>
              <ul class="city_list">
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Молодечно и район</li>
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Вилейка и район</li>
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Сморгонь и район</li>
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Воложин и район</li>
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Мядель и район</li>
                <li><img src="<?php bloginfo('template_url');?>/assets/images/greenicon.png" alt="green icon"> Ошмяны и район</li>
              </ul>
              <p>Если объект в другом регионе — уточните, организуем выезд по РБ.</p>
          </div>
        </div>
        <div class="how_work" id="process">
          <h2>Как мы работаем</h2>
          <div class="work_list">
            <div class="work_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/call.png" alt="icon">
              <p>Заявка</p>
              <p>Позвоните или оставьте заявку на сайте</p>
            </div>
            <div class="work_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/message.png" alt="icon">
              <p>Уточняем задачу и условия</p>
              <p>Обсуждаем детали работы и объект</p>
            </div>
            <div class="work_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/choose.png" alt="icon">
              <p>Подбор техники</p>
              <p>Предлагаем оптимальный вариант и рассчитываем стоимость</p>
            </div>
            <div class="work_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/drive.png" alt="icon">
              <p>Выезд и выполнение работ</p>
              <p>Техника с оператором прибывает на объект</p>
            </div>
            <div class="work_item">
              <img src="<?php bloginfo('template_url');?>/assets/images/docs.png" alt="icon">
              <p>Закрывающие документы и оплата</p>
              <p>Предоставляем все необходимые документы</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="FAQ" id="faq">
      <div class="wrapper">
        <h2>Частые вопросы</h2>
        <div class="accordeon">
          <details>
            <summary><?php the_field('question_1'); ?></summary>
            <p><?php the_field('answer_1'); ?></p>
          </details>
          <details>
            <summary><?php the_field('question_2'); ?></summary>
            <p><?php the_field('answer_2'); ?></p>
          </details>
          <details>
            <summary><?php the_field('question_3'); ?></summary>
            <p><?php the_field('answer_3'); ?></p>
          </details>
          <details>
            <summary><?php the_field('question_4'); ?></summary>
            <p><?php the_field('answer_4'); ?></p>
          </details>
          <details>
            <summary><?php the_field('question_5'); ?></summary>
            <p><?php the_field('answer_5'); ?></p>
          </details>
        </div>
      </div>
    </section>
<?php get_footer(); ?>