import 'package:fast_app_base/common/common.dart';

enum NotificationType{

  moneyTip('오늘의 머니팁', '$basePath/notification/notification_idea.png'),
  luck('행운복권', '$basePath/notification/notification_luck.png'),
  people('토스 공동구매', '$basePath/notification/notification_people.png'),
  stock('토스증권 컨텐츠', '$basePath/notification/notification_stock.png'),
  tossPay('토스페이', '$basePath/notification/notification_toss.png'),
  walk('만보기', '$basePath/notification/notification_walk.png');

  const NotificationType(this.name, this.iconPath);

  final String iconPath;
  final String name;
}