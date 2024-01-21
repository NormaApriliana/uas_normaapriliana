import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perhitungan Luas Lingkaran'),
        ),
        body: Center(
          child: LingkaranForm(),
        ),
      ),
    );
  }
}

class LingkaranForm extends StatefulWidget {
  @override
  _LingkaranFormState createState() => _LingkaranFormState();
}

class _LingkaranFormState extends State<LingkaranForm> {
  TextEditingController jariJariController = TextEditingController();
  double luas = 0.0;

  void hitungLuas() {
    double jariJari = double.tryParse(jariJariController.text) ?? 0.0;
    double hasil = pi * pow(jariJari, 2);
    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: jariJariController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Masukkan Jari-jari'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              hitungLuas();
            },
            child: Text('Hitung Luas'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Luas Lingkaran: $luas',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
