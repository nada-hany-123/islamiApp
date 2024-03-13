
import 'package:flutter/material.dart';
import 'package:new_app/tabs/Quran/sure_details.dart';
import 'package:new_app/tabs/hadeth/hadeth_details.dart';
import 'package:new_app/tabs/settings/setting_provider.dart';
import 'home_screen.dart';
import 'theme.dart';
import 'package:provider/provider.dart';


void main(){
  runApp( IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> SettingsProvider(),
      child: Builder(
        builder: (ctx) =>
           MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              HomeScreen.routeName: (_) => HomeScreen(),
              SureDetailsScreen.routeName:(_)=>SureDetailsScreen (),
              HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen (),
            },
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: Provider.of<SettingsProvider>(ctx).themeMode,
            initialRoute: HomeScreen.routeName,
          ),
    ),
      );
  }
}
