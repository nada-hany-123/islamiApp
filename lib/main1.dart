import 'package:flutter/material.dart';
import 'package:new_app/tabs/Quran/sure_details.dart';
import 'home_screen.dart';
import 'theme.dart';


void main(){
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SureDetailsScreen.routeName:(_)=>SureDetailsScreen (),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
    );
  }
}
