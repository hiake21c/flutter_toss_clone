import 'package:flutter_toss_clone/common/data/preference/app_preferences.dart';
import 'package:flutter_toss_clone/common/data/preference/item/nullable_preference_item.dart';
import 'package:flutter_toss_clone/common/theme/custom_theme.dart';

import 'item/preference_item.dart';
import 'item/rx_preference_item.dart';
import 'item/rxn_preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOn = PreferenceItem<bool>('isPushOn', false );
  static final isPushOnRX = RxPreferenceItem<bool, RxBool>('isPushOnRx', false );
  static final sliderPosition = RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0 );
  static final birthday = RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthday');
  static final number = RxPreferenceItem<int, RxInt>('number', 0 );
}
