import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('data')
        ],
      ),

    );
  }
}