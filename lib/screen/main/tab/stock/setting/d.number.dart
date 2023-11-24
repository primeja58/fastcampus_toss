import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_text_watching_bear.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog({
    super.key,
    super.animation = NavAni.Fade,
  });

  @override
  State<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
    final numberController = TextEditingController();
    final passwordController = TextEditingController();
    final numberFocus = FocusNode();
    final passwordFocus = FocusNode();
    final textbearController = TextWatchingBearController();

    bool check = false;
    bool handsUp = false;
    double look = 0.0;

    @override
    void initState() {
      numberController.addListener(() {
        setState(() {
          look = numberController.text.length.toDouble() * 1.5;
        });
      });

      numberController.addListener(() {
        setState(() {
          check = numberFocus.hasFocus;
        });
      });

      passwordFocus.addListener(() {
        setState(() {
          handsUp = passwordFocus.hasFocus;
        });
      });
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedContaier(
                child: Column(
                  children: [
                    '숫자를 입력해 주세요'
                        .text
                        .color(context.appColors.lessImportantPoint)
                        .make(),
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: TextWatchingBear(
                        check: check,
                        handsUp: handsUp,
                        look: look,
                        controller: textbearController,
                      ),
                    ),
                    TextField(
                      focusNode: numberFocus,
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                    ),
                    TextField(
                      focusNode: passwordFocus,
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                    ),
                    RoundButton(
                        text: '완료',
                        onTap: () async{
                          final text = numberController.text;
                          try{
                            int number = int.parse(text);
                            textbearController.runSuccessAnimation();
                            await sleepAsync(1000.ms);
                            widget.hide(number);
                          }catch(e){
                            textbearController.runFailAnimation();
                          }
                        })
                  ],
                ))
          ],
        ),
      );
    }
  }