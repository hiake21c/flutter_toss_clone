import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toss_clone/common/common.dart';

class StockDetail extends StatelessWidget {
  final String stockName;

  const StockDetail({
    required this.stockName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stockName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.make(),
          ],
        ),
      ),
    );
  }
}