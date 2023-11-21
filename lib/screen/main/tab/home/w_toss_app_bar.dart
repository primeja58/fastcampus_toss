import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../notification/s_notification.dart';

class TossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  // bool _showRedDot = false;
  int _tappingCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          // AnimatedContainer(
          //   duration: 1000.ms,
          //   height: _tappingCount > 2 ? 30 : 60,
          //   child: Image.asset(
          //     '$basePath/icon/toss.png',
          //   ),
          // ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              '$basePath/icon/toss.png',
              height: 30,
            ),
            secondChild:
                Image.asset('$basePath/icon/map_point.png', height: 30),
            crossFadeState: _tappingCount > 1
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: 1500.ms,
          ),
          emptyExpended,
          _tappingCount.text.size(15).white.make(),
          Tap(
            onTap: () {
              setState(() {
                _tappingCount++;
              });
            },
            child: Image.asset(
              '$basePath/icon/map_point.png',
              height: 30,
            ),
          ),
          width10,
          Tap(
            onTap: () {
              // setState(() {`
              //   _showRedDot =! _showRedDot;
              // });
              Nav.push(const NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 30,
                ),
                // if(_showRedDot)
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                ))
              ],
            )
                .animate(onComplete: (controller) => controller.repeat())
                .shake(duration: 5000.ms, hz: 3)
                .then()
                .fadeOut(duration: 1000.ms),
          ),
          width10,
        ],
      ),
    );
  }
}
