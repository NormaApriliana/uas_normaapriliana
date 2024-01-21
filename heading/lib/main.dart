import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 50.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                 child: ElevatedButton(
                  onPressed: () {
              // Aksi yang dijalankan saat tombol ditekan
              print('HITUNG LUAS PERSEGI');
               },
                 child: Text('HITUNG LUAS PERSEGI')
                 ),
               ),
                Card(
                 child: ElevatedButton(
                  onPressed: () {
              // Aksi yang dijalankan saat tombol ditekan
              print('HITUNG LUAS LINGKARAN');
               },
                 child: Text('HITUNG LUAS LINGKARAN'),
                 ),
               ),
                Card(
                 child: ElevatedButton(
                  onPressed: () {
              // Aksi yang dijalankan saat tombol ditekan
              print('PROFILE DEVELOPER');
               },
                 child: Text('PROFILE DEVELOPER'),
                 ),
               )
            ],
        )),
      ),
    );
  }
}