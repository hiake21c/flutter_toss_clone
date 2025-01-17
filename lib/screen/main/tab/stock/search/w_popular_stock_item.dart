import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/tab/vo/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem({super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40, child: number.text.make()),
        width30,
        stock.name.text.make(),
        emptyExpanded,
        stock.todayPercentageString.text
            .color(stock.priceColor(context))
            .make(),
      ],
    ).pSymmetric(v:25);
  }
}
