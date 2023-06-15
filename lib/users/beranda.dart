import 'package:flutter/material.dart';
import 'package:tokoramen/constans.dart';
import 'package:tokoramen/users/depanpage.dart';
import 'package:tokoramen/users/kategoripage.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Cari Ramen',
              prefixIcon: Icon(Icons.search_sharp, color: Palette.orange),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: Palette.bg1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Palette.orange,
          labelColor: Palette.orange,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.all(0),
          tabs: const [Tab(text: 'Beranda'), Tab(text: 'Kategori')],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          DepanPage(),
          KategoriPage(),
        ],
      ),
    );
  }
}
