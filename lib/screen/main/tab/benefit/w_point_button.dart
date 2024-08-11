
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/widget/w_arrow.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.white.size(12).make(),
        emptyExpanded,
        "$point 원".text.white.bold.size(12).make(),
        width10,
        Arrow(color: context.appColors.lessImportant,)
      ],
    );
  }
}
