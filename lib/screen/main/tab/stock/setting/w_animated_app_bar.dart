import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_arrow.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;

  const AnimatedAppBar(this.title, {super.key, required this.controller});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  Duration duration = 100.ms;
  double scrollPosition = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        scrollPosition = widget.controller.position.pixels;
      });
    });
    super.initState();
  }

  bool get isTriggered => scrollPosition > 80;

  bool get isNotTriggered => !isTriggered;

  @override
  Widget build(BuildContext context) {
    duration = 250.ms;
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: SafeArea(
        child: Stack(
          children: [
            Tap(
                onTap: () {
                  Nav.pop(context);
                },
                child: const Arrow(
                  color: Colors.white,
                  direction: AxisDirection.left,
                )).p20(),
            Positioned.fill(
                child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                '$basePath/icon/map_point.png',
                height: 60,
              ),
            )),
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.only(
                  left: isNotTriggered ? 20 : 50,
                  top: isNotTriggered ? 50 : 15),
              child: AnimatedDefaultTextStyle(
                duration: duration,
                style: TextStyle(fontSize: isNotTriggered ? 30 : 18),
                child: widget.title.text.white.make(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
