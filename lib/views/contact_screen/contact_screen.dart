import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher_string.dart';

class ContactUsScreen extends StatelessWidget {
  final String email = 'mmuqtasidrana@gmail.com';
  final String phone = '+923359528776';
  void _launchEmail() async {
    const url =
        'https://mail.google.com/mail/?view=cm&to=mmuqtasidrana@gmail.com&su=Support%20Needed';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      debugPrint('❌ Gmail app or browser could not open');
    }
  }

  void _launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isSmall = width < 360;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.support_agent,
                size: height * 0.12, color: Colors.blueGrey),
            SizedBox(height: height * 0.02),
            Text(
              'Need help or have questions? Contact developer',
              style: TextStyle(
                fontSize: isSmall ? 16 : 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.04),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text(email),
                  onTap: () => _launchEmail()),
            ),
            SizedBox(height: height * 0.02),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text(phone),
                onTap: _launchPhone,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
