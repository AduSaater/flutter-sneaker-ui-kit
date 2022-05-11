import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sneakers/fragment/SSCartFragment.dart';
import 'package:sneakers/fragment/SSFavoriteFragment.dart';
import 'package:sneakers/fragment/SSHomeFragment.dart';
import 'package:sneakers/fragment/SSProfileFragment.dart';
import 'package:sneakers/fragment/SSSearchFragment.dart';


class SSDashBoardScreen extends StatefulWidget {
  @override
  State<SSDashBoardScreen> createState() => _SSDashBoardScreenState();
}

class _SSDashBoardScreenState extends State<SSDashBoardScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    SSHomeFragment(),

    SSCartFragment(),

    SSProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '', activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: '', activeIcon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '', activeIcon: Icon(Icons.person)),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Color(0xff9e9e9e),
        selectedItemColor: context.iconColor,
        iconSize: 24,
        selectedFontSize: 14,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedFontSize: 14,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: tabs[selectedIndex],
    );
  }
}