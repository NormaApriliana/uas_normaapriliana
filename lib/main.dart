import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2210020161',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Norma Apriliana',
            style: TextStyle(
              color: Colors.pink, 
              fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.account_circle), 
          Icon(Icons.access_alarm)],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        margin:EdgeInsets.symmetric(horizontal:20, vertical:20),
        padding: EdgeInsets.all(30),
        child:
        Icon(Icons.home, 
        color: Colors.red,
        size: 100
        ),
      ),
    );
  }
}
