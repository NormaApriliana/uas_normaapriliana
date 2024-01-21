import 'package:flutter/material.dart';

void main() => runApp(BelajarRowColumn());

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Belajar Row Column',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:Aplikasiku(),
    );
  }
}

class Aplikasiku extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Row & Column'),
      ),
      body: Container(
        color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.alarm), Text('Alarm')],
              )
              ),
             Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.navigation), Text('Navigation')],
              )
              ),
          ]),
      ),
    );
  }
}