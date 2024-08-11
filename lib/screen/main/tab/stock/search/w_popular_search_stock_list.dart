import 'package:flutter/cupertino.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/common/dart/extension/datetime_extension.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/vo/popular_stock_dummy.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'.text.make(),
          ],
        ),
        height20,
        ...popularStockList
            .mapIndexed((element, index) =>
                PopularStockItem(stock: element, number: index + 1))
            .toList(),
      ],
    ).pSymmetric(h:20);
  }
}
