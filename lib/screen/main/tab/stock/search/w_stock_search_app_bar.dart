import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/util/app_keyboard_util.dart';
import 'package:flutter_toss_clone/common/widget/w_arrow.dart';
import 'package:flutter_toss_clone/common/widget/w_text_field_with_delete.dart';

import '../../../../../common/widget/w_tap.dart';

class StockSearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const StockSearchAppBar({super.key, required this.controller});

  @override
  State<StockSearchAppBar> createState() => _StockSearchAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class _StockSearchAppBarState extends State<StockSearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Tap(
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox(
                  width: 56,
                  height: kToolbarHeight,
                  child: Arrow(
                    direction: AxisDirection.left,
                  )),
            ),
            Expanded(
              child: TextFieldWithDelete(
                controller: widget.controller,
                texthint: '\'커피\'를 검색해 보세요.',
                textInputAction: TextInputAction.search,
                onEditingComplete: () {
                  context.showSnackbar('검색');
                  AppKeyboardUtil.hide(context);
                },
              ).pOnly(top: 6),
            ),
            width20
          ],
        ),
      ),
    );
  }
}