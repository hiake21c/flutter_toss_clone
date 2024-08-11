import 'package:flutter_toss_clone/common/cli_common.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/widget/w_rounded_container.dart';
import 'package:flutter_toss_clone/screen/main/s_main.dart';
import 'package:flutter_toss_clone/screen/main/tab/home/vo/bank_accounts_dummy.dart';
import 'package:flutter_toss_clone/screen/main/tab/home/w_bank_account.dart';
import 'package:flutter_toss_clone/screen/main/tab/home/w_toss_app_bar.dart';

import '../../../../common/widget/w_big_button.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        child: Stack(
          children: [
            RefreshIndicator(
              edgeOffset: 60,
              onRefresh: () async {
                await sleepAsync(500.ms);
              },
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: TossAppBar.appBarHeight, bottom: MainScreenState.bottomNavigationBarHeight),
                child: Column(
                  children: [
                  BigButton("토스뱅크", onTap: () {
                    context.showSnackbar("토스뱅크를 눌렀어요.");
                  }),
                  height10,
                  RoundedContainer(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "자산".text.bold.white.make(),
                      height5,
                      ...bankAccounts
                          .map((e) => BankAccountWidget(e))
                          .toList(),
                    ],
                  )),
                ],
              ).pSymmetric(h: 20),
              ),
            ),
            TossAppBar()
          ]
        ),
      ),
    );
}
}
