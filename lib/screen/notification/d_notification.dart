import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/screen/notification/vo/vo_notification.dart';
import 'package:flutter_toss_clone/screen/notification/w_notification.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NotificationDialog extends DialogWidget {
  final List<TossNotification> notifications;
  NotificationDialog(this.notifications, {super.key, super.animation = NavAni.Bottom});

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('알림'),
          ...widget.notifications
              .map(
                (element) => NotificationItemWidget(
                  onTap: () {
                    widget.hide();
                  },
                  notification: element,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
