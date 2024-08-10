import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/constants.dart';
import 'package:flutter_toss_clone/common/dart/extension/context_extension.dart';

import '../../../../common/widget/w_height_and_width.dart';

class TossAppBar extends StatefulWidget {

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            width:  60,
          ),
          emptyExpanded,
          Image.asset(
            '$basePath/icon/map_point.png',
            width: 30,
          ),
          width10,
          Tap(
            onTap: () {
              setState(() {
                _showRedDot = !_showRedDot;
              });
            },
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  width: 30,
                ),
                if(_showRedDot) Positioned.fill(child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                  ),
                ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
