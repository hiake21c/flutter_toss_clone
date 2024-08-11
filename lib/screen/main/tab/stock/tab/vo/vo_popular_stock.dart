import 'package:flutter_toss_clone/screen/main/tab/stock/tab/vo/stock_percentage_data_provider.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/tab/vo/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDataProvider{
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  PopularStock({required String name, required this.yesterdayClosePrice, required this.currentPrice,})
      : super(name);
}