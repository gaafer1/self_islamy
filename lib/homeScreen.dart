import 'package:flutter/material.dart';
import 'package:self_islamy/common/images.dart';
import 'package:self_islamy/screens/hadeth%20screen.dart';
import 'package:self_islamy/screens/quran%20screen.dart';
import 'package:self_islamy/screens/radio%20screen%20.dart';
import 'package:self_islamy/screens/sebha%20sreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  static const String routename = "Homescreen";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

List<Widget> screens = [const Quran_screen(), const Hadeth_Screen(), const Sebha_sreen(), const Radio_Screen()];

class _HomescreenState extends State<Homescreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    

    return Container(
      decoration:  BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AppImages.bg),
        fit: BoxFit.fill,
    ),), child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
        title: const Text("اسلامي",textAlign:TextAlign.center,style: TextStyle(color: Colors.black),),
      ),

      body: screens[index],

      bottomNavigationBar: 
      BottomNavigationBar( 
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor:  const Color (0xffB7935F),
        currentIndex: index,
       items:  [
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.quranImage)),label: "Quran"),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.hadethImage)),label: "hadeth"),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.sebhaImage)),label: "sebha"),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.radioImage)),label: "radio"),
       ],
       onTap:(value) {
         index=value;
         setState(() {});
       } ,),

    ));
  }
}