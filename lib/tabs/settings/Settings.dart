import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class SettingTab  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =
    Provider.of<SettingsProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark Mode',
              style: Theme.of(context).textTheme.titleLarge,),
              Switch(
                value: settingsProvider.themeMode==ThemeMode.dark,
                   onChanged: (value){
                if(value){
                  settingsProvider.changeTheme(ThemeMode.dark);
                }else{
                  settingsProvider.changeTheme(ThemeMode.light);
                }
              },
                activeTrackColor: Theme.of(context).primaryColor,
                inactiveTrackColor: Theme.of(context).primaryColor,
                thumbColor: MaterialStatePropertyAll(AppTheme.white),

              ),
            ],
          )

           ],

      ),
    );
  }
}