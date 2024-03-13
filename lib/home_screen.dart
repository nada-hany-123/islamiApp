import 'package:flutter/material.dart';
import 'package:new_app/tabs/settings/Settings.dart';
import 'package:new_app/tabs/Quran/quran.dart';
import 'package:new_app/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'tabs/sebha/sebha.dart';
import 'tabs/hadeth/hadeth.dart';
import 'tabs/radio/radio.dart';
class HomeScreen extends StatefulWidget {
static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    SettingTab(),
    RadioTab(),
    Tasbeeh(),
    HadethTap(),
    QuranTab(),


  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/${Provider.of<SettingsProvider>(context).backgroundimagePath}.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme
            .of(context)
            .primaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex:selectedIndex ,
          onTap: (index){
            selectedIndex = index;
            setState(() {
            });
          },
          items: const [

            BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),
              label: 'الإعدادات',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/radio.png'),),
              label: 'الراديو',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/sebha.png'),),
              label: 'سبحه',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/quran-quran-svgrepo-com.png'),),
              label: 'الحديث',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/moshaf_gold.png'),),
              label: 'القرآن',
            ),

           ],
        ),
      ),
    );
  }
}
