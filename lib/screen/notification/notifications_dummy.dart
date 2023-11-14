import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDumies = <TossNotification>[
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요?  CGV에서 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
  ),
  TossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴께요',
    DateTime.now().subtract(1.hours),
  ),
  TossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요',
    DateTime.now().subtract(1.hours),
  ),
  TossNotification(
    NotificationType.moneyTip,
    '유럽 식품 물가가 치솟고 있어요.\n 김주아님 코타키나발루로 가보는건 어떤가요 ',
    DateTime.now().subtract(8.hours),
  ),
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요?  CGV에서 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(11.hours),
  ),
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요?  CGV에서 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(1.days),
  ),

];
