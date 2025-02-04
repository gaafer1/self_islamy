import 'package:flutter/material.dart';
import 'package:self_islamy/common/images.dart';
import 'package:self_islamy/screens/quran%20screen.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});
  static const String routename = "Quran_tab";
  @override
  Widget build(BuildContext context) {

    QuranModel quranModel=ModalRoute.of(context)!.settings.arguments as QuranModel;

    return Container(
      decoration:  BoxDecoration(
      image: DecorationImage(
        image: Theme.of(context).brightness == Brightness.dark ? AssetImage(AppImages.darkBgImage) : AssetImage(AppImages.bg),
        fit: BoxFit.fill,
    ),), child: Scaffold(
       

        appBar: AppBar(
        title: const Text("islamy"),
      ),

      body: Container( padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.03),
        margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
         vertical: MediaQuery.of(context).size.height * 0.05,),
        decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.85),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column( children: [
        Text(quranModel.name,style: Theme.of(context).textTheme.bodyLarge,),
           Divider(
            indent: MediaQuery.of(context).size.width*0.09,
            endIndent: MediaQuery.of(context).size.width*0.09,),
      ],),
      ),
   
   
     )
    );
  }
}