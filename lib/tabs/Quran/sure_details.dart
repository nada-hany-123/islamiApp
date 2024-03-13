import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/theme.dart';
import 'package:provider/provider.dart';

import '../../widgets/loading.dart';
import '../settings/setting_provider.dart';

class SureDetailsScreen extends StatefulWidget {
  static const String routeName = 'sure_details';

  @override
  State<SureDetailsScreen> createState() => _SureDetailsScreenState();
}

class _SureDetailsScreenState extends State<SureDetailsScreen> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    SureDetailsArg args =
    ModalRoute
        .of(context)!
        .settings
        .arguments as SureDetailsArg;
    if (ayat.isEmpty) {
      loadSuraFile(args.index);
    }

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${Provider.of<SettingsProvider>(context).backgroundimagePath}.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body:
          ayat.isEmpty ?
          LoadingIndicator() :
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
              itemBuilder: (context, index) => Text(ayat[index],
              style: Theme.of(context).textTheme.titleLarge,
              textDirection: TextDirection.rtl,),
              itemCount: ayat.length,
            ),
          ),
        )
    );
  }

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    ayat = sura.split('\n');
    setState(() {});
  }
}
class SureDetailsArg{
  int index;
  String suraName;
  SureDetailsArg(this.index , this.suraName);

}
