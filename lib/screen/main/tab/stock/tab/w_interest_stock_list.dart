import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/tab/vo/stocks_dummy.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/tab/w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...myInterestStocks.map((element) => StockItem(element)).toList(),
    ],);
  }
}
