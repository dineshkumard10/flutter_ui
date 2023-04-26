import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_svg/svg.dart';
import '../fontstyle/textstyle.dart';
import 'package:shimmer/shimmer.dart';

class Foryoupage extends StatefulWidget {
  const Foryoupage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForyoupageState createState() => _ForyoupageState();
}

class _ForyoupageState extends State<Foryoupage> {
  bool _issaved = false;
  bool _isonclicked = false;
  bool isConnected = false;
  bool isload = false;

  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    _connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NetworkErrorPage(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xfffce3f4),
            extendBody: true,
            appBar: AppBar(
              backgroundColor: const Color(0xfffce3f4),
              elevation: 0,
              leading: const Icon(
                Icons.search,
                color: Color(0xff4D444C),
              ),
              title: const Center(
                  child: Text(
                'Now in Android',
                style: TextStyle(
                    color: Color(0xff201A1B),
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              )),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(left: 10, right: 15),
                    child: SvgPicture.asset('assets/Profile.svg')),
                // Icon(
                //   Icons.person_outline_outlined,
                //   color: Colors.black,
                // )
              ],
            ),
            body: SingleChildScrollView(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'What are you interested in?',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff201A1B)),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Updates from interests you follow will appear here. Follow \n some things to get started.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff201A1B),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 120,
                        child: Shimmer.fromColors(
                          baseColor: Color(0xffEDDEE8),
                          highlightColor: Color.fromARGB(255, 238, 184, 220),
                          period: const Duration(seconds: 2),
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Adarsh Fernando',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Alex Saveau',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text('Alex Vanyo',
                                              style: RobotoFont()
                                                  .S_TextTitle
                                                  .copyWith(
                                                      color: const Color(
                                                          0xff4D444C))),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Amanda Alexander',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Andrew Flynn',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Anna-Chiara',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 70,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset('assets/Profile+.svg'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Anna Bembau',
                                            style: RobotoFont()
                                                .S_TextTitle
                                                .copyWith(
                                                    color: const Color(
                                                        0xff4D444C)),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 50,
                                shadowColor: Colors.black,
                                color: Colors.greenAccent[100],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 260,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Accessibility.svg'),
                                              ),
                                            ),
                                            title: Text('Accessibility',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Android Auto.svg'),
                                              ),
                                            ),
                                            title: Text('Android Auto',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Android Studio.svg'),
                                              ),
                                            ),
                                            title: Text('Android Studio',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4),
                                                  child: Image.asset(
                                                      'assets/Android TV.jpg')),
                                            ),
                                            title: Text('Android TV',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Architecture.svg'),
                                              ),
                                            ),
                                            title: Text('Architecture',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Compose.svg'),
                                              ),
                                            ),
                                            title: Text('Compose',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/New APIs & Libraries.svg'),
                                              ),
                                            ),
                                            title: Text('New APIs & Libraries',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Data Storage.svg'),
                                              ),
                                            ),
                                            title: Text('Data Storage',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      color: const Color(0xffFCFCFC),
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: SizedBox(
                                          width: 300,
                                          child: ListTile(
                                            leading: SizedBox(
                                              width: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4),
                                                child: SvgPicture.asset(
                                                    'assets/Compose.svg'),
                                              ),
                                            ),
                                            title: Text('Kotlin',
                                                style: RobotoFont()
                                                    .U_TextTitle
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff4D444C))),
                                            trailing: SvgPicture.asset(
                                                'assets/Pluse.svg'),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _isonclicked = !_isonclicked;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: _isonclicked
                                      ? const Color(0xff362F30)
                                      : const Color(0xffe1d6de),

                                  // onPrimary: Colors.amber,
                                  shape: const StadiumBorder()),
                              child: const Text(
                                'Done',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Browse Topics',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        height: 490,
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/gImage.png',
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: SvgPicture.asset(
                                                'assets/#authorImage.svg'),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8, top: 12),
                                            child: Text(
                                              'Author',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'New Compose for Wear\nOS codelab',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400),
                                        )),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, bottom: 24),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _issaved = !_issaved;
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             Savedpage()));
                                          });
                                        },
                                        child: _issaved
                                            ? SvgPicture.asset(
                                                'assets/follow-button (custom).svg',
                                                height: 32,
                                              )
                                            : const Icon(
                                                Icons.bookmark_border_outlined,
                                                size: 23,
                                              ),
                                      ))
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/Unvisited.svg'),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        'January 1, 2021',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: SvgPicture.asset(
                                          'assets/Separator.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        'developer.android.com',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Text(
                                'In this codelab, you can learn how Wear OS\ncan work with Compose, what Wear OS\nspecific composables are available, and\nmore!',
                                style: TextStyle(
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 33,
                                        width: 320,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      'ElevatedButton Clicked');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xfff4edf2),
                                                  elevation: 0,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                ),
                                                child: Text('Topic',
                                                    style: RobotoFont()
                                                        .R_TextTitle
                                                        .copyWith(
                                                            color: const Color(
                                                                0xff4D444C))),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      'ElevatedButton Clicked');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xffFFD6FA),
                                                  elevation: 0,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                ),
                                                child: Text('Compose',
                                                    style: RobotoFont()
                                                        .R_TextTitle
                                                        .copyWith(
                                                            color: const Color(
                                                                0xff4D444C))),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      'ElevatedButton Clicked');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xfff4edf2),
                                                  elevation: 0,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                ),
                                                child: Text('Events',
                                                    style: RobotoFont()
                                                        .R_TextTitle
                                                        .copyWith(
                                                            color: const Color(
                                                                0xff4D444C))),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      'ElevatedButton Clicked');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xfff4edf2),
                                                  elevation: 0,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                ),
                                                child: Text('Performance',
                                                    style: RobotoFont()
                                                        .R_TextTitle
                                                        .copyWith(
                                                            color: const Color(
                                                                0xff4D444C))),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      'ElevatedButton Clicked');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xfff4edf2),
                                                  elevation: 0,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                  ),
                                                ),
                                                child: Text('Topic',
                                                    style: RobotoFont()
                                                        .R_TextTitle
                                                        .copyWith(
                                                            color: const Color(
                                                                0xff4D444C))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.more_vert),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  )),
            )));
  }
}

class NetworkErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffce3f4),
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Color(0xfffce3f4),
          elevation: 0,
          leading: Icon(
            Icons.search,
            color: Color(0xff4D444C),
          ),
          title: Center(
              child: Text(
            'Now in Android',
            style: TextStyle(
                color: Color(0xff201A1B),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          )),
          actions: [
            // Padding(
            //     padding: const EdgeInsets.only(left: 10, right: 15),
            //     child: SvgPicture.asset('assets/Profile.svg')),
            Icon(
              Icons.abc,
              size: 20,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 200, bottom: 10),
          child: Center(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/Error.svg')),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text(
                        'Error',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff4D444C)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          ' You aren’t connected to the internet',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff4D444C)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
