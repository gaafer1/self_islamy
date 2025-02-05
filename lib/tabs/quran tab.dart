import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:self_islamy/common/images.dart';
import 'package:self_islamy/screens/quran%20screen.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});
  static const String routename = "Quran_tab";

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
      List<String> virses = [];
  @override
  Widget build(BuildContext context) {

    QuranModel quranModel=ModalRoute.of(context)!.settings.arguments as QuranModel;
    if(virses.isEmpty){
      loadSouraContect(quranModel.index);
    }

    return Container(
      decoration:  BoxDecoration(
      image: DecorationImage(
        image: Theme.of(context).brightness == Brightness.dark ? AssetImage(AppImages.darkBgImage) : AssetImage(AppImages.bg),
        fit: BoxFit.fill,
    ),), child: Scaffold(
       

        appBar: AppBar(
        title: const Text("islamy"),
      ),

      body: Container( padding:  EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height*0.02,
        horizontal: MediaQuery.of(context).size.width*0.07),
       
        margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
         vertical: MediaQuery.of(context).size.height * 0.05,),
        decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.85),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
         children: [
        Text(quranModel.name,style: Theme.of(context).textTheme.bodyLarge,),
           Divider(
            indent: MediaQuery.of(context).size.width*0.07,
            endIndent: MediaQuery.of(context).size.width*0.07,),

            virses.isEmpty ? const Expanded(child: Center(child: CircularProgressIndicator(),)) :
        Expanded(child:ListView.builder(
          itemBuilder: (context, index) => Text(virses[index],
          style: Theme.of(context).textTheme.bodyLarge,
          textDirection: TextDirection.rtl,
          textAlign:TextAlign.center,)
          ,itemCount: virses.length,) ,)
      ],),
      ),
   
   
     )
    );
  }

   Future<void> loadSouraContect(int index)async{
  String data =await rootBundle.loadString("Assets/quran_text/${index+1}.txt"); 
     virses = data.split("\n");
    setState(() {});
   }
}