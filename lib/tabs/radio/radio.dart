import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          children: [
            SizedBox(height: 120,),
          Image.asset('assets/images/radioo.png'),
      SizedBox(height: 60,),
            Text('إذاعة القران الكريم',
              style: Theme.of(context).textTheme.titleLarge,),

              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Row(
      children: [
                  Image.asset('assets/images/Group 5.png'),

      ],
                ),
              )
      ],
      ),
    );
  }
}
