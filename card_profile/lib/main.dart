import 'package:flutter/material.dart';

void main() => runApp(CardProfile());

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/lia.jpeg'),
              ),
              Text('Norma Apriliana', 
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              Text('FLUTTER DEVELOPER', style: TextStyle(
                fontFamily: 'SourceSans3',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 50.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box, 
                    color: Colors.teal,),
                    title: Text('2210020161', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0
                    )),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_box, 
                    color: Colors.teal,),
                    title: Text('5A NON REGULER BANJARBARU', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0
                    )),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone, 
                    color: Colors.teal,),
                    title: Text('+62 813 4941 6164', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0
                    )),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email, 
                    color: Colors.teal,),
                    title: Text('normaapriliana@gmail.com', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0
                    )),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.navigation, 
                    color: Colors.teal,),
                    title: Text('BANJARBARU', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0
                    )),
                ),
              )
            ],
        )),
      ),
    );
  }
}