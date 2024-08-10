import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';

class RoundedContainer extends StatelessWidget {

  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;

  const RoundedContainer({required this.child, super.key, this.radius = 20, this.backgroundColor, this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: backgroundColor ?? context.appColors.roundedButtonBackground,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
