    <footer class="footer">
      <div class="wrapper">
        <div class="footer_items">
          <div class="calc_pop">
            <h4>Подберём технику <br> и рассчитаем стоимость</h4>
              <p>Оставьте заявку — перезвоним, уточним детали <br>и предложим оптимальный вариант.</p>
              <div class="calc_form">
                 <?php echo do_shortcode('[contact-form-7 id="7f51523" title="Контактная форма"]') ?>
              </div>
          </div>
          <div class="contacts" id="contacts">
            <div class="contacts_wrap">
              <h3>Контакты</h3>
              <div class="tel">
              <img src="<?php bloginfo('template_url');?>/assets/images/tel.png" alt="icon">
              <div class="tel_phone">
                <p>Телефон</p>
                <p class="phone"><?php the_field('phone_1') ?></p>
                <p class="phone"><?php the_field('phone_2') ?></p>
              </div>
            </div>
            <div class="message">
              <img src="<?php bloginfo('template_url');?>/assets/images/messenger.png" alt="icon">
              <div class="message_item">
                <p>Мессенджеры</p>
                <div class="message_icons">
                  <a href=" <?php the_field('viber'); ?>" target="_blank"><img src="<?php bloginfo('template_url');?>/assets/images/Viber.png" alt="viber"></a>
                <a href=" <?php the_field('telegram'); ?>" target="_blank"><img src="<?php bloginfo('template_url');?>/assets/images/telegram.png" alt="telegram"></a>
                <a href=" <?php the_field('whatsapp'); ?>" target="_blank"><img src="<?php bloginfo('template_url');?>/assets/images/whatsapp.png" alt="whatsapp"></a>
                </div>
              </div>
            </div>
            <div class="address">
              <img src="<?php bloginfo('template_url');?>/assets/images/mapdot.png" alt="icon">
              <div class="address_items">
                <p>Адрес</p>
                <div class="address_city">
                  <p><?php the_field('ur_address'); ?></p>
                  <p><?php the_field('address'); ?></p>
                  <p><?php the_field('unp'); ?></p>
                </div>
              </div>
            </div>
            <div class="time">
              <img src="<?php bloginfo('template_url');?>/assets/images/time.png" alt="icon">
              <div class="time_items">
                <p>Режим работы</p>
                <p class="mode"><?php the_field('work_time'); ?></p>
                <p> Консультация 24/7 по договоренности режим <br>работы может быть изменен.</p>
              </div>
            </div>
            </div>
          </div>
        </div>
        <div class="footer_links">
          <a href="#" class="header_logo">
          <img class="right_icon" src="<?php bloginfo('template_url');?>/assets/images/leftz.png" alt="icon">
          <span class="header_logo-text">МолодечноСпецТранс</span>
          <img class="left_icon" src="<?php bloginfo('template_url');?>/assets/images/right icon.png" alt="icon">
        </a>
        <span>Аренда спецтехники в Молодечно и районах Минской области</span>
        </div>
        <div class="privacy_policy">
          <a href="#">Политика конфиденциальности</a>
          <a href="#">Политика обработки файлов cookie</a>
          <p>© 2026 МолодечноСпецТранс. Все права защищены.</p>
        </div>
      </div>
    </footer>

     <?php wp_footer() ?>


    <input type="checkbox" id="popup-toggle" class="popup-toggle">
      <label for="popup-toggle" class="popup-overlay"></label>
      <label for="popup-toggle" class="calc_pop2">
        <label for="popup-toggle" class="close-btn">&times;</label>
        <h4>Подберём технику <br> и рассчитаем стоимость</h4>
        <p>Оставьте заявку — перезвоним, уточним детали <br>и предложим оптимальный вариант.</p>
        <div class="calc_formpop">
          <?php echo do_shortcode('[contact-form-7 id="7f51523" title="Контактная форма"]') ?>
        </div>
      </div>

</body>
</html>