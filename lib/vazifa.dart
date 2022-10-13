import 'package:flutter/material.dart';
import 'package:instagram/home.dart';
import 'package:instagram/search.dart';
import 'package:instagram/setting.dart';
class Vazifa extends StatefulWidget {
  @override
  State<Vazifa> createState() => _VazifaState();
}
PageController? _pageController ;
List _pages = [
  Home(),
  Search(),
  Setting()
];
int _select = 0;

class _VazifaState extends State<Vazifa> {
  @override
  void initState() {
 _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(

        itemCount: _pages.length,
        onPageChanged: (index) {
          setState(() {
            _select = index;
          });
        },
        itemBuilder: (context, index) {
          return _pages[_select];
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _select,
      selectedIconTheme: IconThemeData(

      ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            activeIcon: Icon(Icons.select_all),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settting",
          ),
        ],
        onTap: (index) {
          setState(() {
            _select = index;
          });
        },
      ),
    );
  }
}
