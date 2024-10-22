import 'package:flutter/material.dart';

class MyAboutPage extends StatefulWidget {
  const MyAboutPage({super.key});

  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: const Color.fromARGB(255, 58, 183, 114),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05), 
          child: Text(
            'Aplikasi ini berguna untuk menyimpan gambar gambar anda secara pribadi karena mempunyai sistem keamanan yg menjamin privasi anda',
            style: TextStyle(
              fontSize: size.width * 0.05, 
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, 
          ),
        ),
      ),
    );
  }
}