import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 183, 175, 58),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05), 
          child: Text(
            'Muhamad Ihsan /// 2209106099',
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