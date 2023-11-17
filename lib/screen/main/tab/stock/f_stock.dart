import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.veryDarkGrey,
          iconTheme: const IconThemeData(color: Colors.white70),
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                context.showSnackbar('검색');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('캘린더');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                context.showSnackbar('세팅');
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            myAccount,
            myStocks,
          ],
        ))
      ],
    );
  }

  Widget get title => Row(
    crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          '토스증권'
              .text
              .size(24)
              .bold
              .color(context.appColors.lessImportantPoint)
              .make(),
          width20,
          'S&P 500'
              .text
              .size(13)
              .bold
              .color(context.appColors.lessImportantPoint)
              .make(),
          width10,
          3919.29
              .toComma()
              .text
              .size(13)
              .bold
              .color(context.appColors.stockPoint)
              .make(),
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Placeholder();

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
