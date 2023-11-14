import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/notifications_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

import 'd_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('알림'),
            backgroundColor: AppColors.veryDarkGrey,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => NotificationItemWidget(
              notification: notificationDumies[index],
              onTap: () {
                NotificationDialog([notificationDumies[0], notificationDumies[1]]).show();
              },
            ),
            childCount: notificationDumies.length,
          )),
        ],
      ),
    );
  }
}
