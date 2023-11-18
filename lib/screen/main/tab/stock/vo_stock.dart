import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required super.stockName,
    required this.stockImagePath,
    required super.currentPrice,
    required super.yesterdayClosePrice,
  });

}
