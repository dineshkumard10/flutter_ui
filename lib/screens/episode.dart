import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplepage/peoplescreens/people1.dart';
import 'package:simplepage/peoplescreens/people2.dart';
import 'package:simplepage/peoplescreens/people3.dart';
import 'package:simplepage/peoplescreens/people4.dart';
import 'package:simplepage/peoplescreens/people5.dart';
import 'package:simplepage/screens/andriod%20auto.dart';
import 'package:simplepage/screens/andriod%20tv.dart';
import 'package:simplepage/screens/android%20studio.dart';
import 'package:simplepage/screens/architecture.dart';
import '../fontstyle/textstyle.dart';
import '../peoplescreens/people6.dart';
import 'accessibility.dart';

class Episodepage extends StatefulWidget {
  const Episodepage({super.key});

  @override
  State<Episodepage> createState() => _EpisodepageState();
}

class _EpisodepageState extends State<Episodepage> {
  int _selectedIndex = -1;

  void _selectContainer(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex;
      } else {
        _selectedIndex = index;
      }
    });
  }

  bool isConnected = false;
  late StreamSubscription sub;
  @override
  void initState() {
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        isConnected = (result != ConnectivityResult.none);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xfff3edf3),
        extendBody: true,
        appBar: AppBar(
          backgroundColor: const Color(0xfff3edf3),
          elevation: 0,
          leading: const Icon(
            Icons.search,
            color: Color(0xff4D444C),
          ),
          title: Center(
            child: Text(
              'Following',
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                color: Color(0xff201A1B),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              )),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 15),
              child: Icon(
                Icons.more_vert,
                color: Color(0xff4D444C),
              ),
            ),
          ],
          bottom: const TabBar(indicatorColor: Color(0xff201A1B), tabs: [
            Tab(
              child: Text(
                'Topics',
                style: TextStyle(color: Color(0xff201A1B)),
              ),
            ),
            Tab(
              child: Text(
                'People',
                style: TextStyle(color: Color(0xff201A1B)),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: ListView(
                children: [
                  Container(
                    decoration: _selectedIndex == 0
                        ? BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff7F747C),
                            ),
                            borderRadius: BorderRadius.circular(24))
                        : null,
                    child: ListTile(
                      onTap: () {
                        setState(
                          () {
                            _selectContainer(0);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Accessibility(),
                              ),
                            );
                          },
                        );
                      },
                      contentPadding: const EdgeInsets.all(10),
                      leading: SvgPicture.asset('assets/Accessibility.svg'),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Accessibility',
                          style: RobotoFont().DD_TextTitle,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 29),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectContainer(0);
                            });
                          },
                          child: _selectedIndex == 0
                              ? SvgPicture.asset('assets/button.svg')
                              : const Icon(
                                  Icons.add,
                                  color: Color(0xff4D444C),
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 1
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(1);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Auto(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset('assets/Android Auto.svg'),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Android Auto',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(1);
                              });
                            },
                            child: _selectedIndex == 1
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 2
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(2);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Studio(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Android Studio.svg',
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Android Studio',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(2);
                              });
                            },
                            child: _selectedIndex == 2
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 3
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(3);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Tv(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: Image.asset('assets/Android TV (3).png'),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 34),
                          child: Text(
                            'Android TV',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(3);
                              });
                            },
                            child: _selectedIndex == 3
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 4
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(4);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Architecture(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset('assets/Architecture.svg'),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Architecture',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(4);
                              });
                            },
                            child: _selectedIndex == 4
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 5
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(5);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Architecture(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Compose.svg',
                          width: 65,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Compose',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(5);
                              });
                            },
                            child: _selectedIndex == 5
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 6
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(6);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Architecture(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/New APIs & Libraries.svg',
                          width: 65,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'New APIs & Libraries',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(6);
                              });
                            },
                            child: _selectedIndex == 6
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 7
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(7);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Architecture(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Data Storage.svg',
                          width: 65,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Data Storage',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(7);
                              });
                            },
                            child: _selectedIndex == 7
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 8
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(8);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Architecture(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Compose.svg',
                          width: 65,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Kotlin',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(8);
                              });
                            },
                            child: _selectedIndex == 8
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: ListView(
                children: [
                  Container(
                    decoration: _selectedIndex == 0
                        ? BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff7F747C),
                            ),
                            borderRadius: BorderRadius.circular(24))
                        : null,
                    child: ListTile(
                      onTap: () {
                        setState(
                          () {
                            _selectContainer(0);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const People1(),
                              ),
                            );
                          },
                        );
                      },
                      contentPadding: const EdgeInsets.all(10),
                      leading: SvgPicture.asset('assets/Avatar.svg'),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Adarsh\nFernando',
                          style: RobotoFont().DD_TextTitle,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 29),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectContainer(0);
                            });
                          },
                          child: _selectedIndex == 0
                              ? SvgPicture.asset('assets/button.svg')
                              : const Icon(
                                  Icons.add,
                                  color: Color(0xff4D444C),
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 1
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(1);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const People2(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset('assets/Avatar.svg'),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Alex Saveau',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(1);
                              });
                            },
                            child: _selectedIndex == 1
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 2
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(2);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const People3(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Avatar.svg',
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Alex Vanyo',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(2);
                              });
                            },
                            child: _selectedIndex == 2
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 3
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(3);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const People4(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Avatar.svg',
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Amanda Alexander',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(3);
                              });
                            },
                            child: _selectedIndex == 3
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 4
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(4);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const People5(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Avatar.svg',
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Andew Flynn',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(4);
                              });
                            },
                            child: _selectedIndex == 4
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: _selectedIndex == 5
                          ? BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7F747C),
                              ),
                              borderRadius: BorderRadius.circular(24))
                          : null,
                      child: ListTile(
                        onTap: () {
                          setState(
                            () {
                              _selectContainer(5);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const People6(),
                                ),
                              );
                            },
                          );
                        },
                        contentPadding: const EdgeInsets.all(10),
                        leading: SvgPicture.asset(
                          'assets/Avatar.svg',
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Meghan Mehta',
                            style: RobotoFont().DD_TextTitle,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 29),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectContainer(5);
                              });
                            },
                            child: _selectedIndex == 5
                                ? SvgPicture.asset('assets/button.svg')
                                : const Icon(
                                    Icons.add,
                                    color: Color(0xff4D444C),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
