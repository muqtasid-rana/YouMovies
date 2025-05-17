import 'package:flutter/material.dart';
import 'package:you_movies/utils/constants/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: const Text('Settings'), backgroundColor: bgColor),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.info_outline, color: kRed),
            title: Text(
              'About Us',
              style: TextStyle(color: kRed),
            ),
            onTap: null,
          ),
          Divider(color: Colors.white24),
          ListTile(
            leading: Icon(Icons.contact_mail, color: kRed),
            title: Text(
              'Contact Us',
              style: TextStyle(color: kRed),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
