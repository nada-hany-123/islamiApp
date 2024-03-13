import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/tabs/hadeth/hadeth_data.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';
import '../settings/setting_provider.dart';
class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.
    settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${Provider.of<SettingsProvider>(context).backgroundimagePath}.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadeth.title),
          ),
          body:
          Container(
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius:
                BorderRadius.all(Radius.circular(25)
                )
            ),
            margin: EdgeInsets.symmetric(
              vertical:MediaQuery.of(context).size.height*0.05,
              horizontal:MediaQuery.of(context).size.width*0.05,
            ),
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemBuilder: (context, index) => Text(hadeth.content[index],
                style: Theme.of(context).textTheme.titleLarge,
                textDirection: TextDirection.rtl,),
              itemCount: hadeth.content.length,
            ),
          ),
        )
    );
  }
}
