import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simplepage/screens/episode.dart';
import 'package:simplepage/screens/foryou.dart';
import 'package:simplepage/screens/intresest.dart';
import 'package:simplepage/screens/saved.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int index = 0;
  List pages = [
    const Foryoupage(),
    const Intresestpage(),
    const Savedpage(),
    const Episodepage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              indicatorColor: Color.fromARGB(255, 240, 230, 239)),
          child: NavigationBar(
            backgroundColor: Color(0xffFCFCFC),
            onDestinationSelected: (int index) {
              setState(() {
                this.index = index;
              });
            },
            selectedIndex: index,
            destinations: <Widget>[
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/darkfor.svg',
                  semanticsLabel: 'A shark?!',
                ),
                icon: SvgPicture.asset(
                  'assets/11.svg',
                  semanticsLabel: 'A shark?!',
                ),
                label: 'For you',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/dotbook.svg',
                  semanticsLabel: 'A shark?!',
                ),
                label: 'Episode',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'assets/sssss.svg',
                  semanticsLabel: 'A shark?!',
                ),
                icon: SvgPicture.asset(
                  'assets/ss.svg',
                  semanticsLabel: 'A shark?!',
                ),
                label: 'Saved',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/hash.svg',
                  semanticsLabel: 'A shark?!',
                ),
                label: 'Interests',
              ),
            ],
          ),
        ),
        body: pages.elementAt(index));
  }
}
