class ServiceItem {
  final String iconPath;
  final String title;
  final List<String> bullets;

  const ServiceItem({
    required this.iconPath,
    required this.title,
    required this.bullets,
  });
}

const List<String> kNavItems = [
  'НАШИ УСЛУГИ',
  'О НАС',
  'КЕЙСЫ B2B',
  'ЭТАПЫ РАБОТЫ',
  'КОНТАКТЫ'
];

const List<ServiceItem> mockServices = [
  ServiceItem(
    iconPath: 'assets/icons/icon_dev.png',
    title: 'Разработка цифровых\nпродуктов',
    bullets: [
      'Разработка сайтов',
      'Разработка веб-сервисов и порталов',
      'Разработка мобильных приложений',
      'UX/UI дизайн',
      'Техническая архитектура и проектирование'
    ],
  ),
  ServiceItem(
    iconPath: 'assets/icons/icon_marketing.png',
    title: 'Digital-маркетинг\nи продвижение',
    bullets: [
      'SEO-продвижение',
      'Контекстная реклама (Google Ads, Яндекс)',
      'Таргетированная реклама (Meta, TikTok и др.)',
      'SMM (ведение соцсетей)',
      'Медийная реклама'
    ],
  ),
  ServiceItem(
    iconPath: 'assets/icons/icon_digital_solutions.png',
    title: 'Цифровые решения\nи собственные продукты',
    bullets: [
      'AI-решения для бизнеса',
      'Автоматизация маркетинга (автопостинг и др.)',
      'Чат-боты и виртуальные ассистенты',
      'Модерация и мониторинг контента',
      'Веб-приложения и сервисы'
    ],
  ),
  ServiceItem(
    iconPath: 'assets/icons/icon_automation.png',
    title: 'Внедрение\nи автоматизация бизнеса',
    bullets: [
      'Внедрение CRM-систем',
      'Внедрение ERP-систем',
      'Автоматизация бизнес-процессов',
      'Интеграции и API',
      'Техническая поддержка и сопровождение'
    ],
  ),
  ServiceItem(
    iconPath: 'assets/icons/icon_content.png',
    title: 'Контент\nи продакшн',
    bullets: [
      'Видеопродакшн',
      'Создание digital-контента',
      'AI-аватары и синтетический контент',
      'Дизайн и визуальные материалы',
      'Копирайтинг и тексты'
    ],
  ),
  ServiceItem(
    iconPath: 'assets/icons/icon_event.png',
    title: 'Event-маркетинг\nи оффлайн мероприятия',
    bullets: [
      'Организация деловых мероприятий (форумы,\nконференции)',
      'PR-мероприятия и презентации',
      'Корпоративные мероприятия',
      'Техническое обеспечение мероприятий',
      'Гибридные и онлайн-трансляции'
    ],
  ),
];
