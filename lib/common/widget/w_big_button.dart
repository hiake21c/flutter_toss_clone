import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/widget/w_arrow.dart';
import 'package:flutter_toss_clone/common/widget/w_rounded_container.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigButton(this.text, {super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: RoundedContainer(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text.text.white.size(20).bold.make(),
          Arrow(),
        ],
      )),
    );
  }
}
