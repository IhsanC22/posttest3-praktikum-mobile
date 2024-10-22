import 'package:flutter/material.dart';
import 'package:posttest/pages/about_page.dart';
import 'package:posttest/pages/profile_page.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key});

  @override
  State<MySettingPage> createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {
 bool _notificationsEnabled = true; 

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings (BETA)'),
        backgroundColor: const Color.fromARGB(255, 58, 143, 183),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05), 
        child: ListView(
          children: [
            _buildListTile(
              title: 'Profile',
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfilePage()),
                );
              },
            ),
            _buildListTile(
              title: 'Notifications',
              icon: Icons.notifications,
              trailing: Switch(
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value; 
                  });
                },
              ),
            ),
            _buildListTile(
              title: 'About',
              icon: Icons.info,
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAboutPage()),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _buildListTile({
    required String title,
    required IconData icon,
    Function()? onTap,
    Widget? trailing,
  }) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      onTap: onTap,
    );
  }
