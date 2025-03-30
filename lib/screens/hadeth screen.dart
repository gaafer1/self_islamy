import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:self_islamy/common/images.dart';

class Hadeth_Screen extends StatefulWidget {
  const Hadeth_Screen({super.key});
  static const String routename = "Hadeth_Screen";

  @override
  State<Hadeth_Screen> createState() => _Hadeth_ScreenState();
}

class _Hadeth_ScreenState extends State<Hadeth_Screen> {
  List<HadethModel> hadethsModel = [];
  @override
  Widget build(BuildContext context) {
    if (hadethsModel.isEmpty) {
      loadHadeeth();
    }
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.hadethHeader, height: MediaQuery.of(context).size.height*(220/870),),
        const Divider(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("الأحاديث",style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,)
          ],),
        const Divider(),  
        Expanded(child: ListView.builder(
          itemBuilder: (context,index)=>InkWell(
           onTap: (){
            // Navigator.of(context).pushNamed(QuranTab.routename,
            // arguments: QuranModel(name: SurasName[index],index: index));
          },
        ))),
      ],
    )
    ;
  }

  loadHadeeth()async{
      String data=await rootBundle.loadString("assets/hadeth.txt");
      List<String> Hadeeths=data.trim().split("#");
      Hadeeths.removeWhere((element) => element.trim().isEmpty);
      for (var i = 0; i < Hadeeths.length; i++) {
        int index=Hadeeths[i].trim().indexOf("\n");
        String name=Hadeeths[i].trim().substring(0,index);
        String content=Hadeeths[i].trim().substring(index);
        print("name: $name ");
        print(" content: $content");
      }
    }
}

    class HadethModel{
      String name;
      String content;
      HadethModel({required this.name,required this.content});
    } 