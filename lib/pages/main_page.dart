import 'package:flutter/material.dart';
import 'package:posttest/pages/setting_page.dart';
import 'package:posttest/widget/deskripsi_asset.dart';

class MyMainPage extends StatefulWidget {
  final String username;

  const MyMainPage({Key? key, required this.username}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri'),
        backgroundColor: const Color.fromARGB(255, 140, 208, 240), 
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySettingPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 79, 101, 102),  
              Color.fromARGB(255, 196, 168, 233), 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  deskripsAsset(
                    'asset/Glock17.jpg',
                    'Sebuah poto dari pistol glock 17',
                  ),
                  deskripsAsset(
                    'asset/fredrik-hellberg-asset.jpg',
                    'hasil render 3d oleh fredrik hellberg',
                  ),
                  deskripsAsset(
                    'asset/Apple_Cat.jpg',
                    'kucing sedang beristirahat di atas buah apel',
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  deskripsAsset(
                    'asset/download.jpg',
                    'stage Ultrakill',
                  ),
                  deskripsAsset(
                    'asset/son.jpg',
                    'lukisan the son of man',
                  ),
                  deskripsAsset(
                    'asset/douje.png',
                    'lukisan tentang wajah',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

