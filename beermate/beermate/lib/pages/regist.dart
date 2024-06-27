import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regisztráció'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Teljes név',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                prefixIcon: Icon(Icons.format_list_bulleted_rounded),
              ),
            ),
            SizedBox(height: 16),
            TextField(
                decoration: InputDecoration(
                  hintText: 'Telefonszám',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.1),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ]),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Jelszó',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Jelszó megereősítése',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
          ],
        ),
      ),
    );
  }
}
