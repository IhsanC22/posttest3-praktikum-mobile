import 'package:flutter/material.dart';
import 'package:posttest/pages/main_page.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final TextEditingController username = TextEditingController(text: 'milton');
  final TextEditingController password = TextEditingController(text: 'kul123');

  void _submit() {
    if (username.text.isNotEmpty && password.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyMainPage(username: username.text),
        ),
      );
      username.clear();
      password.clear();
    }
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color.fromARGB(255, 247, 7, 7), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.8,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                  hintText: "Masukan nama anda",
                  labelText: "Username",
                ),
              ),
            ),
            Container(
              width: size.width * 0.8,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  hintText: "Masukan password",
                  labelText: "Password",
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: _submit,
                child: const Text("Masuk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}