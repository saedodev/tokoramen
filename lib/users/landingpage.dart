// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:tokoramen/constans.dart';
import 'package:tokoramen/users/akunpage.dart';
import 'package:tokoramen/users/beranda.dart';
import 'package:tokoramen/users/favoritepage.dart';
import 'package:tokoramen/users/keranjangpage.dart';
import 'package:tokoramen/users/transaksipage.dart';

class LandingPage extends StatefulWidget {
  final Widget child;
  final String nav;

  LandingPage({this.nav, Key key, this.child}) : super(key: key);
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Beranda(),
    FavoritePage(),
    KeranjangPage(),
    TransaksiPage(),
    AkunPage()
  ];

  @override
  void initState() {
    super.initState();
    if (widget.nav == "2") {
      _bottomNavCurrentIndex = 2;
    }
  }

  @override
  void dispose() {
    _bottomNavCurrentIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.bg1,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Palette.bg1,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: Palette.bg1,
              ),
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Palette.bg1,
              ),
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.swap_horiz_sharp,
                color: Palette.bg1,
              ),
              icon: Icon(
                Icons.swap_horiz_sharp,
                color: Colors.grey,
              ),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Palette.bg1,
              ),
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: 'Profil',
            ),
          ],
        ));
  }
}
