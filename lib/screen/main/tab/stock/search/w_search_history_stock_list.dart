import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter_toss_clone/screen/main/tab/stock/search/stock_search_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 5),
        scrollDirection: Axis.horizontal,
        itemCount: searchData.searchHistoryList.length,
        itemBuilder: (context, index) {
          final stockName = searchData.searchHistoryList[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Tap(
                        onTap: () {
                          Nav.push(StockDetail(stockName: stockName));
                        },
                        child: searchData.searchHistoryList[index].text.make()),
                    Tap(
                        onTap: () {
                          setState(() {
                            searchData.removeHistory(stockName);
                          });
                        },
                        child: Icon(Icons.close))
                  ],
                )
                    .box
                    .withRounded(value: 6)
                    .color(context.appColors.roundedLayoutBackground)
                    .p8
                    .make(),
              ),
            ],
          );
        },
      ),
    );
  }
}
