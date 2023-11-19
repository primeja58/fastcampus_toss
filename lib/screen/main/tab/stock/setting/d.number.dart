import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';


class NumberDialog extends DialogWidget<int?> {


  NumberDialog({super.key, super.animation = NavAni.Fade,});

  @override
  State<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContaier(child: Column(
            children: [
              '숫자를 입력해 주세요'.text.color(context.appColors.lessImportantPoint).make(),
              TextField(controller: controller, keyboardType: TextInputType.number,),
              RoundButton(text: '완료', onTap: (){
                final text = controller.text;
                int number = int.parse(text);
                widget.hide(number);
              })
            ],
          ) )
        ],
      ),
    );
  }
}
