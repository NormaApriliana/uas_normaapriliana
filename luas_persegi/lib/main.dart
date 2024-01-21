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
          title: Text('Perhitungan Luas Persegi'),
        ),
        body: Center(
          child: PersegiForm(),
        ),
      ),
    );
  }
}

class PersegiForm extends StatefulWidget {
  @override
  _PersegiFormState createState() => _PersegiFormState();
}

class _PersegiFormState extends State<PersegiForm> {
  TextEditingController sisiController = TextEditingController();
  double luas = 0.0;

  void hitungLuas() {
    double sisi = double.tryParse(sisiController.text) ?? 0.0;
    double hasil = sisi * sisi;
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
            controller: sisiController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Masukkan Panjang'),
          ),
          SizedBox(height: 16.0),
          TextField(
            //controller: sisiController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Masukkan Lebar'),
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
            'Luas Persegi: $luas',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
