import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/tabs/hadeth/hadeth_details.dart';
import 'package:new_app/theme.dart';
import 'package:new_app/widgets/loading.dart';

import 'hadeth_data.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty)
      loadHadethFile();
      return Column(
        children: [
          Image.asset('assets/images/hadeth.png'),
          SizedBox(height: 16,),
          Divider(height: 5,thickness:3,color:AppTheme.gold
        ,),
          Text('الأحاديث',style: Theme.of(context).textTheme.titleLarge,),
          Divider(height: 5,thickness:3,color: AppTheme.gold,),

          Expanded(
            child:
            ahadeth.isEmpty ? LoadingIndicator() :
            ListView.separated(
              itemBuilder: (context,index) =>
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(
                        HadethDetailsScreen.routeName,
                        arguments: ahadeth[index],
                      );
                    },
                    child:
                    Text(ahadeth[index].title,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
              itemCount: ahadeth.length,
              separatorBuilder: (context,index) =>
                  SizedBox(height: 3,),
            ),
          )
        ],

      );

  }

  Future<void> loadHadethFile() async {
    String ahadethFileContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethStrings = ahadethFileContent.split('#');
    ahadeth = ahadethStrings.map((hadethString) {
      List<String>hadethLine = hadethString.trim().split('\n');
      String title = hadethLine[0];
      hadethLine.removeAt(0);
      List<String> content = hadethLine;
      return Hadeth(title, content);
    }).toList();
    setState(() {});
  }
}

