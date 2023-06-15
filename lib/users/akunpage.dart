import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constans.dart';

class AkunPage extends StatefulWidget {
  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  cekLogout() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('login', false);
      prefs.setString('username', '');
      prefs.setString('nama', '');
      prefs.setString('email', '');
      prefs.setString('level', '');
      prefs.setString('foto', '');
      prefs.setString('cabang', '');
      prefs.setInt('jmlnotif', 0);
    });
    Navigator.of(context).pushNamedAndRemoveUntil(
        '/landingusers', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profil'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  cekLogout();
                },
                child: Container(
                  height: 50.0,
                  margin: const EdgeInsets.only(top: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    shadowColor: Colors.blue[800],
                    color: Palette.menuNiaga,
                    elevation: 7.0,
                    child: const Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
