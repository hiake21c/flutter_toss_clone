import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/widget/w_height_and_width.dart';
import 'package:flutter_toss_clone/screen/main/tab/benefit/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(benefit.imagePath, width: 50, height: 50,),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.white.bold.size(13).make(),
            benefit.title.text.color(context.appColors.blueText).size(13).make(),
          ],
        ).expand(),
      ],
    ).pSymmetric(v:20);
  }
}
