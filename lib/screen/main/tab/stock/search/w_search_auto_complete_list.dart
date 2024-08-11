import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/stock_search_data.dart';

class SearchAutoCompleteList extends StatelessWidget with SearchStockDataProvider {
  final TextEditingController controller;
  SearchAutoCompleteList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.name;
        return Tap(onTap: (){
            controller.clear();
            searchData.addHistory(stock);
            Nav.push(StockDetail(stockName: stockName));
          },
          child: stockName.text.make().p(20)
        );
      },
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
