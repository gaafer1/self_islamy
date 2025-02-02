import 'package:flutter/material.dart';
import 'package:self_islamy/common/images.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});
  static const String routename = "Quran_tab";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
      image: DecorationImage(
        image: Theme.of(context).brightness == Brightness.dark ? AssetImage(AppImages.darkBgImage) : AssetImage(AppImages.bg),
        fit: BoxFit.fill,
    ),), child: Scaffold(
       

        appBar: AppBar(
        title: const Text("islamy"),
      )
    )
    );
  }
}