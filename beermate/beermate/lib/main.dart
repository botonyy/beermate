import 'package:beermate/pages/login.dart';
import 'package:beermate/pages/regist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeerMate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeerMate'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

        SizedBox(height: 16),
        Container(
          width: 280, // Háttér szélessége
          height: 50, // Háttér magassága
          decoration: BoxDecoration(
            color:
                Color.fromARGB(255, 209, 208, 208), // Szürke háttérszín
            borderRadius: BorderRadius.circular(10), // Lekerekített sarkok
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                  fontSize: 16, // Betűméret
                  fontWeight: FontWeight.bold, // Betűtípus
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent, // Átlátszó háttér a gombon
              ),
              elevation:
                  MaterialStateProperty.all<double>(0), // Nincs árnyékolás
            ),
            child: Text('Bejelentkezés'),
          ),
        ),

        SizedBox(height: 16),
        Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 209, 208, 208),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                  fontSize: 16, // Betűméret
                  fontWeight: FontWeight.bold, // Betűtípus
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent, // Átlátszó háttér a gombon
              ),
              elevation:
                  MaterialStateProperty.all<double>(0), // Nincs árnyékolás
            ),
            child: Text('Bejelentkezés Google fiókkal'),
          ),
        ),


        SizedBox(height: 16),
        Container(
          width: 280, // Háttér szélessége
          height: 50, // Háttér magassága
          decoration: BoxDecoration(
            color:
                const Color.fromARGB(255, 209, 208, 208), // Szürke háttérszín
            borderRadius: BorderRadius.circular(10), // Lekerekített sarkok
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                  fontSize: 16, // Betűméret
                  fontWeight: FontWeight.bold, // Betűtípus
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent, // Átlátszó háttér a gombon
              ),
              elevation:
                  MaterialStateProperty.all<double>(0), // Nincs árnyékolás
            ),
            child: Text('Regisztráció'),
          ),
        ),
      ])),
    );
  }
}