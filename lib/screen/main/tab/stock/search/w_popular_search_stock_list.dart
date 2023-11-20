import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';
import 'w_popuplar_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기검색'.text.bold.color(context.appColors.lessImportantPoint).make(),
            emptyExpended,
            '오늘 ${DateTime.now().formattedTime} 기준'
                .text
                .bold
                .color(context.appColors.lessImportantPoint)
                .make(),
            height20,
          ],
        ),
        height20,
        ...popularStockList
            .mapIndexed((e, index) => Row(
                    children: [
                      (index + 1).text.bold.white.size(16).make(),
                      width20,
                      e.name.text.bold.white.size(16).make(),
                      emptyExpended,
                      e.todayPercentageString.text
                          .color(e.getPriceColor(context))
                          .size(16)
                          .make(),
                    ],
                  ).pSymmetric(h: 20, v: 20),
                )
            .toList()
      ],
    );
  }
}
