import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/dart/extension/datetime_extension.dart';
import 'package:flutter_toss_clone/common/data/preference/app_preferences.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:flutter_toss_clone/screen/opensource/s_opensource.dart';

import '../../../../../common/data/preference/prefs.dart';
import '../../../../../common/widget/w_big_button.dart';
import 'd_number.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isPushOn = false;

  @override
  void initState() {
    isPushOn = Prefs.isPushOn.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: ListView(
        children: [
          //switch
          Obx(
                () =>
                SwitchMenu(
                  '푸시 설정',
                  Prefs.isPushOnRX.get(),
                  onChanged: (isOn) {
                    Prefs.isPushOnRX.set(isOn);
                  },
                ),
          ),
          //slider

          Obx(() =>
              Slider(
                  value: Prefs.sliderPosition.get(),
                  onChanged: (value) {
                    Prefs.sliderPosition.set(value);
                  })),
          //date time
          Obx(
                () =>
                BigButton(
                    '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday
                        .get()
                        ?.formattedDate}', onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(90.days),
                    lastDate: DateTime.now().add(90.days),
                  );
                  if (date != null) {
                    Prefs.birthday.set(date);
                  }
                }),
          ),
          //number
          Obx(
                () =>
                BigButton('저장된 숫자 ${Prefs.number.get()}', onTap: () async {
                  final number = await NumberDialog().show();
                  if (number != null) {
                    Prefs.number.set(number);
                  }
                }),
          ),
          BigButton("Open source", onTap: (){
            Nav.push(OpensourceScreen());
          })
        ],
      ),
    );
  }
}
