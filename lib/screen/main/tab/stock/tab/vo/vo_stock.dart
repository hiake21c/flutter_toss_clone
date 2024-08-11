import 'package:flutter_toss_clone/screen/main/tab/stock/tab/vo/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({required this.stockImagePath,
      required super.yesterdayClosePrice,
      required super.currentPrice,
      required super.name});
}
