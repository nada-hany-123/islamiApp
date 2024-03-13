import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/theme.dart';
class Tasbeeh  extends StatefulWidget {

  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  int counter = 0;
  int index = 0;
  double angle=0;
  List<String> doaa = ['الله أكبر', 'الحمد لله', 'سبحان الله', 'أستغفر الله'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Align(alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/head of seb7a.png', height: 100,)),
                ),
                GestureDetector(
                  onTap: () {
                    counterMethod();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 74.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Transform.rotate(angle: angle,
                            child: Image.asset('assets/images/tasbeh.png'))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('عدد التسبيحات',
    style: Theme.of(context).textTheme.titleLarge,)
              ,
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme
                    .of(context)
                    .primaryColor,),
              child: Text(
                counter.toString()
                , style: Theme.of(context).textTheme.titleLarge,),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme
                    .of(context)
                    .primaryColor,),
              child: Text(
                doaa[index]
                , style: Theme.of(context).textTheme.titleLarge,),
            )


          ]
      ),
    );
  }

  counterMethod() {
    angle+=20;
    if (counter == 33) {
      counter = 0;
      index++;
      if (index < doaa.length - 1) {
        index++;
      }
      else {
        index = 0;
      }
    }
  else
  {
  counter++;
  }
    setState(() {});
    }
}

