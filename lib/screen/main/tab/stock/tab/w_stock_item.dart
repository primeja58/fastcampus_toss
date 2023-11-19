import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import '../vo_stock.dart';

class StockItem extends StatelessWidget {

  final Stock stock;
  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: context.appColors.roundedLayoutBackground,
      child: Row(
        children: [
          width10,
          Image.asset(stock.stockImagePath, width: 50),
          width20,
          (stock.name).text.color(context.appColors.lessImportantPoint).size(18).bold.make(),
          emptyExpended,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
              '${stock.currentPrice.toComma()}원'.text.color(context.appColors.lessImportantPoint).make(),
            ],
          )
        ],
      ),
    );
  }
}
