import 'package:flutter_toss_clone/screen/notification/vo/notification_type.dart';

class TossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  final bool isRead;

  const TossNotification(this.type, this.description, this.time, {this.isRead = false});
}