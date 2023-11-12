import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContaier extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color? backgroundColor;
  final double radius;

  const RoundedContaier({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    this.radius = 20,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor ?? context.appColors.roundedLayoutBackground,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
