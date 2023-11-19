import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_longbutton.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '계좌'.text.size(18).color(context.appColors.lessImportantPoint).make(),
            Row(
              children: [
                '443원'
                    .text
                    .size(24)
                    .color(context.appColors.lessImportantPoint)
                    .bold
                    .make(),
                const Arrow(color: Colors.white),
                emptyExpended,
                RoundedContaier(
                  backgroundColor: context.appColors.unreadColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                  child: '채우기'
                      .text
                      .size(12)
                      .color(context.appColors.lessImportantPoint)
                      .make(),
                )
              ],
            ),
            height30,
            Line(color: context.appColors.lessImportantText),
            height10,
            const LongButton(
              title: '주문내역',
            ),
            const LongButton(
              title: '판매수익',
            ),
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            height30,
            Row(
              children: [
                '관심주식'.text.size(18).color(context.appColors.lessImportantPoint).make(),
                emptyExpended,
                '편집하기'
                    .text
                    .size(12)
                    .color(context.appColors.lessImportantPoint)
                    .make(),
              ],
            ),
            height20,
            Tap(
              onTap: () {
                context.showSnackbar('기본');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12,),
                child: Row(
                  children: [
                    '기본'.text.color(context.appColors.lessImportantPoint).make(),
                    emptyExpended,
                    const Arrow(direction: AxisDirection.up,color: Colors.white),
                  ],
                ),
              ),
            ),
            const InterestStockList().pSymmetric(h: 20),
          ],
        ),
      );
}
