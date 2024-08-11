import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/screen/main/s_main.dart';
import 'package:flutter_toss_clone/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:flutter_toss_clone/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:flutter_toss_clone/screen/main/tab/benefit/w_point_button.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
            bottom: MainScreenState.bottomNavigationBarHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height30,
            "혜택".text.white.bold.size(18).make(),
            height30,
            const PointButton(point: 1210),
            height20,
            "혜택 더 받기".text.white.bold.size(16).make(),
            ...benefitList
                .map((element) => BenefitItem(benefit: element))
                .toList(),
          ],
        ).pSymmetric(h: 20),
      ),
    );
  }
}