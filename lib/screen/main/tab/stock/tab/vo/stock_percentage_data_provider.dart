import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';

abstract mixin class StockPercentageDataProvider{

  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage => double.parse(((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100).toStringAsFixed(2));
  String get todayPercentageString => '${symbol}$todayPercentage%';
  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;
  String get symbol => isPlus ? '+' : isMinus ? '-' : '';

  Color? priceColor(BuildContext context) {
    if (isPlus) {
      return context.appColors.plus;
    } else if (isMinus) {
      return context.appColors.minus;
    } else {
      return null;
    }
  }
}