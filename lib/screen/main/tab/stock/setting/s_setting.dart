import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_animated_app_bar.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/material.dart';

import '../../../../../common/data/preference/prefs.dart';
import 'd.number.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  final scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: [
              //swich
              Obx(
                    () =>
                    SwitchMenu(
                      '푸시설정',
                      Prefs.isPushOnRx.get(),
                      onChanged: (bool isOn) {
                        Prefs.isPushOnRx.set(isOn);
                      },
                    ),
              ),

              Obx(() =>
                  Slider(
                      value: Prefs.sliderPosition.get(),
                      onChanged: (value) {
                        Prefs.sliderPosition.set(value);
                      })),
              Obx(
                    () =>
                    BigButton(
                        '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday
                            .get()
                            ?.formattedDate}',
                        onTap: () async {
                          final date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now().subtract(90.days),
                              lastDate: DateTime.now().add(90.days));
                          if (date != null) {
                            Prefs.birthday.set(date);
                          }
                        }).pOnly(bottom: 20),
              ),
              Obx(
                    () =>
                    BigButton('저장된 숫자 ${Prefs.number.get()}', onTap: () async {
                      final number = await NumberDialog().show();
                      if (number != null) {
                        Prefs.number.set(number);
                      };
                    }).pOnly(bottom: 20),
              ),
              BigButton('오픈소스 화면', onTap: () async{
                Nav.push(OpensourceScreen());
              }).pOnly(bottom: 20),
              BigButton('오픈소스 화면', onTap: () async{
                Nav.push(OpensourceScreen());
              }).pOnly(bottom: 20),
              BigButton('오픈소스 화면', onTap: () async{
                Nav.push(OpensourceScreen());
              }).pOnly(bottom: 20),
              BigButton('오픈소스 화면', onTap: () async{
                Nav.push(OpensourceScreen());
              }).pOnly(bottom: 20),
              BigButton('오픈소스 화면', onTap: () async{
                Nav.push(OpensourceScreen());
              }).pOnly(bottom: 20),
            ],
          ),
          AnimatedAppBar('설정', controller: scrollController),
        ],
      ),
    );
  }
}
