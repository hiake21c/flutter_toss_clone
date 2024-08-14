import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/widget/w_round_button.dart';
import 'package:flutter_toss_clone/common/widget/w_rounded_container.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int> {
  NumberDialog({super.key, super.animation = NavAni.Fade});

  @override
  State<NumberDialog> createState() => _NumberDialogState();
}

class _NumberDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         RoundedContainer(child: Column(
           children: [
             '숫자를 입력해주세요.'.text.make(),
             TextField(controller: controller, keyboardType: TextInputType.number,),
             RoundButton(text: "완료", onTap: (){
                final text = controller.text;
                int number = int.parse(text);
                widget.hide(number);
             }).p20()
           ] ,
         ))

        ],
      ),
    );
  }
}
