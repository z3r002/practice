import 'package:flutter/material.dart';
import 'package:practice/screens/calc/home_screen.dart';
import 'package:practice/screens/gallery/gallery_screen.dart';
import 'package:practice/screens/generator/generator_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    GallaryScreen(),
    GeneratorScreen()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _children[_currentIndex],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.black),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: onTappedBar,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.calculate_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: '',
                    activeIcon: Icon(
                      Icons.calculate_rounded,
                      size: 30,
                      color: Colors.greenAccent,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.insert_photo,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: '',
                    activeIcon: Icon(
                      Icons.insert_photo,
                      size: 30,
                      color: Colors.greenAccent,
                    )),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.qr_code_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: '',
                  activeIcon: Icon(Icons.qr_code_outlined,
                      size: 30, color: Colors.greenAccent),
                ),
              ],
            )));
  }
}
