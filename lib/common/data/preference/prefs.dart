import 'package:flutter_toss_clone/common/data/preference/item/nullable_preference_item.dart';
import 'package:flutter_toss_clone/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
}
