import 'package:beermate/pages/regist.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Bejelentkezés",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Add meg az adataidat a bejelentkezéshez"),
      ],
    );
  }

  _inputField(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      TextField(
        decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: const Color.fromARGB(255, 105, 104, 104).withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Jelszó",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: const Color.fromARGB(255, 105, 104, 104).withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.password),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 215),
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
              // gomb logika
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: const Color.fromARGB(255, 209, 208, 208),
            ),
            child: const Text(
              "Bejelentkezés",
              style: TextStyle(fontSize: 16),
            ),
          )),
    ]);
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Még nincs fiókod?"),
        TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: const Text(
              "Regisztráció",
              style: TextStyle(color: Color.fromARGB(255, 105, 104, 104)),
            ))
      ],
    );
  }
}
