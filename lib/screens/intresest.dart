import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplepage/screens/setting.dart';
import '../fontstyle/textstyle.dart';

class Intresestpage extends StatefulWidget {
  const Intresestpage({super.key});

  @override
  State<Intresestpage> createState() => _IntresestpageState();
}

class _IntresestpageState extends State<Intresestpage> {
  bool _issaved = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xfffdebfa),
            extendBody: true,
            appBar: AppBar(
              backgroundColor: const Color(0xfffdebfa),
              elevation: 0,
              leading: const Padding(
                padding: EdgeInsets.only(top: 18, left: 12),
                child: Icon(
                  Icons.menu,
                  color: Color(0xff4D444C),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 58, top: 18),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFD6FA),
                            shape: StadiumBorder(),
                            side: BorderSide(color: Color(0xff564c52)),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Color(0xff201A1B),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                        ),
                      )),
                ),
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
                                builder: (context) => const Intresestpages()),
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
                        child: Text('Meghan Mehta',
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
                            child: PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 1,
                                  child: Text('Option 1'),
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Text('Option 2'),
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: Text('Option 3'),
                                ),
                              ],
                              onSelected: (value) {
                                // Do something when a menu item is selected.
                                print('Selected: $value');
                              },
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Open Menu'),
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
                                              'assets/follow-button (custom).svg',
                                              height: 30,
                                            )
                                          : Icon(
                                              Icons.bookmark_border_outlined,
                                              size: 20,
                                            ),
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