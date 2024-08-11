import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/screen/notification/w_notification.dart';

import '../../common/constant/app_colors.dart';
import 'd_notification.dart';
import 'notifications_dummy.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('알림'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NotificationItemWidget(
                    notification: notificationDummies[index],
                  onTap: () {
                    NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();
                  },
                );
              },
              childCount: notificationDummies.length,
            ),
          ),
        ],
      ),
    );
  }
}
