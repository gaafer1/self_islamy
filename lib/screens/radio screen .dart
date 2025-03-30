import 'package:flutter/material.dart';
import 'package:self_islamy/common/colors.dart';
import 'package:self_islamy/common/images.dart';

class Radio_Screen extends StatelessWidget {
  const Radio_Screen({super.key});
  static const String routename = "Radio_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'Assets/Images/radio_image.png',
            height: MediaQuery.of(context).size.height * (320 / 870),
          ),
          
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(child: Image.asset(AppImages.iconBack,
            color: Theme.of(context).brightness==Brightness.light?AppColors.mainLightColor:AppColors.goldColor,
            ),onTap:() {},),

            InkWell(child: Image.asset(AppImages.iconPlay,
            color: Theme.of(context).brightness==Brightness.light?AppColors.mainLightColor:AppColors.goldColor,
            ),onTap:() {},),

            InkWell(child: Image.asset(AppImages.iconNext,
            color: Theme.of(context).brightness==Brightness.light?AppColors.mainLightColor:AppColors.goldColor,
            ),onTap:() {},),
          ],)
         
        ],
      )
    )
    ;
  }
}