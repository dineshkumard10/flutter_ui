import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplepage/peoplescreens/peoplesetting1.dart';
import 'package:simplepage/peoplescreens/peoplesetting2.dart';
import 'package:simplepage/peoplescreens/peoplesetting3.dart';
import 'package:simplepage/peoplescreens/peoplesetting4.dart';
import 'package:simplepage/peoplescreens/peoplesetting5.dart';
import 'package:simplepage/peoplescreens/peoplesetting6.dart';
import '../fontstyle/textstyle.dart';
import 'package:simplepage/screens/setting.dart';

class People6 extends StatefulWidget {
  const People6({super.key});

  @override
  State<People6> createState() => _People6State();
}

class _People6State extends State<People6> {
  bool _issaved = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xfffdebfa),
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Color(0xfffdebfa),
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Icon(
                  Icons.menu,
                  color: Color(0xff4D444C),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 52, top: 18),
                child: Center(
                    child: Text(
                  ' Episodes',
                  style: TextStyle(
                      color: Color(0xff201A1B),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
              ),
              actions: [
                SizedBox(
                    width: 128,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 13,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.check,
                                size: 15,
                                color: Color(0xff201A1B),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Following',
                                style: TextStyle(
                                    color: Color(0xff4D444C), fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFD6FA),
                          shape: StadiumBorder(),
                          side: BorderSide(color: Color(0xff564c52)),
                        ),
                      ),
                    )),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 110, vertical: 30),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Peoplesetting6()),
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/Placeholder author image.svg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Meghan Ment',
                            style: RobotoFont()
                                .B_TextTitle
                                .copyWith(color: Color(0xff4D444C)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Android Developer Advocate @google, sketch\ncomedienne, opera singer. BLM.',
                          style: RobotoFont()
                              .A_TextTitle
                              .copyWith(color: Color(0xff4D444C))),
                    ),
                  ),
                  Container(
                    height: 100,
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
                                  color: Color(0xffFCFCFC),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Container(
                                      width: 350,
                                      height: 72,
                                      child: ListTile(
                                        leading:
                                            Image.asset('assets/Medias.png'),
                                        title: Text('Link title'),
                                        subtitle: Text('developer.android.com'),
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
                                  color: Color(0xffFCFCFC),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Container(
                                      width: 350,
                                      height: 72,
                                      child: ListTile(
                                        leading:
                                            Image.asset('assets/Medias.png'),
                                        title: Text('Link title'),
                                        subtitle: Text('developer.android.com'),
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
                                  color: Color(0xffFCFCFC),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Container(
                                      width: 350,
                                      height: 72,
                                      child: ListTile(
                                        leading:
                                            Image.asset('assets/Medias.png'),
                                        title: Text('Link title'),
                                        subtitle: Text('developer.android.com'),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Newest first',
                                    style: TextStyle(
                                        color: Color(0xff4D444C), fontSize: 11),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SvgPicture.asset(
                                        'assets/downarrow.svg'),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xfff3edf3),
                                shape: StadiumBorder(),
                                side: BorderSide(color: Color(0xff564c52)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            children: [
                              Text('Compact view'),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SvgPicture.asset('assets/double.svg'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 505,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
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
                                        Padding(
                                          padding: const EdgeInsets.only(
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
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
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
                                        });
                                      },
                                      child: _issaved
                                          ? SvgPicture.asset(
                                              'assets/follow-button (custom).svg')
                                          : Icon(
                                              Icons.bookmark_border_outlined),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/Unvisited.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'developer.android.com',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              'In this codelab, you can learn how Wear OS\ncan work with Compose, what Wear OS\nspecific composables are available, and\nmore!',
                              style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 33,
                                      width: 320,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 2),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'ElevatedButton Clicked');
                                              },
                                              child: Text('Topic',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: Color(
                                                              0xff4D444C))),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xfff4edf2),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'ElevatedButton Clicked');
                                              },
                                              child: Text('Compose',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: Color(
                                                              0xff36003C))),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffFFD6FA),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'ElevatedButton Clicked');
                                              },
                                              child: Text('Events',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: Color(
                                                              0xff4D444C))),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xfff4edf2),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'ElevatedButton Clicked');
                                              },
                                              child: Text('Performance',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: Color(
                                                              0xff4D444C))),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xfff4edf2),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                debugPrint(
                                                    'ElevatedButton Clicked');
                                              },
                                              child: Text('Topic',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: Color(
                                                              0xff4D444C))),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xfff4edf2),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(Icons.more_vert),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
