// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../fontstyle/textstyle.dart';

class Architecture extends StatefulWidget {
  const Architecture({super.key});

  @override
  State<Architecture> createState() => _ArchitectureState();
}

class _ArchitectureState extends State<Architecture> {
  bool _issaved = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffefe5ed),
        extendBody: true,
        appBar: AppBar(
          backgroundColor: const Color(0xffefe5ed),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff1e8ef),
                  shape: const StadiumBorder(),
                  side: const BorderSide(color: Color(0xff564c52)),
                ),
                child: const Text(
                  'Follow',
                  style: TextStyle(color: Color(0xff4D444C), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/Architecture.svg',
                    width: 172,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Android Architecture',
                        style: RobotoFont().DDD_TextTitle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Text(
                        'Android Architecture is an important part of any app. Whether you’re developing a new app or improving an existing one, consider the accessibility of your app’s components.',
                        style: RobotoFont().DDDd_TextTitle),
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff3edf3),
                                shape: const StadiumBorder(),
                                side:
                                    const BorderSide(color: Color(0xff564c52)),
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    'Newest first',
                                    style: TextStyle(
                                        color: Color(0xff4D444C), fontSize: 11),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SvgPicture.asset(
                                        'assets/downarrow.svg'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 14),
                          child: Row(
                            children: [
                              const Text(
                                'Compact view',
                              ),
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
                  SizedBox(
                    height: 505,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, top: 12),
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
                                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                                              height: 32,
                                            )
                                          : Icon(
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
                            Text(
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
                                            padding:
                                                const EdgeInsets.only(left: 2),
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
                                                          Radius.circular(15)),
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
                                            padding:
                                                const EdgeInsets.only(left: 5),
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
                                                          Radius.circular(15)),
                                                ),
                                              ),
                                              child: Text('Compose',
                                                  style: RobotoFont()
                                                      .R_TextTitle
                                                      .copyWith(
                                                          color: const Color(
                                                              0xff36003C))),
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
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xfff4edf2),
                                                elevation: 0,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
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
                                            padding:
                                                const EdgeInsets.only(left: 5),
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
                                                          Radius.circular(15)),
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
                                            padding:
                                                const EdgeInsets.only(left: 5),
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
                                                          Radius.circular(15)),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
