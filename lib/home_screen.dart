import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/tabs/quran/quran_tap.dart';
import 'package:new_app/tabs/setting/setting_tab.dart';
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
    QuranTab(),
    HadethTap(),
    SebhaTab(),
    RadioTab(),
    SettingTab(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg3.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFB7935F),
          type: BottomNavigationBarType.fixed,
          currentIndex:selectedIndex ,
          onTap: (index){
            selectedIndex = index;
            setState(() {
            });
          },
          items: const [
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/moshaf_gold.png'),),
              label: 'Quran',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/quran-quran-svgrepo-com.png'),),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
              AssetImage('assets/images/sebha.png'),),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(icon:ImageIcon(
            AssetImage('assets/images/radio.png'),),
          label: 'Radio',
          ),
            BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
           ],
        ),
      ),
    );
  }
}
