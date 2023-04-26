import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplepage/screens/intresest.dart';
import 'package:simplepage/screens/searchpage.dart';
import 'package:simplepage/screens/textsearch.dart';
import '../fontstyle/textstyle.dart';

enum radio { Default, Androidbrand }

enum appearance { Systemdefault, Light, Dark }

enum ThemeMode { light, dark }

class Peoplesetting1 extends StatefulWidget {
  const Peoplesetting1({super.key});

  @override
  State<Peoplesetting1> createState() => _Peoplesetting1State();
}

class _Peoplesetting1State extends State<Peoplesetting1> {
  radio _value = radio.Default;
  appearance _values = appearance.Systemdefault;
  bool _off = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xfff3edf3),
              extendBody: true,
              appBar: AppBar(
                backgroundColor: Color(0xfff3edf3),
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
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: Text(
                    ' Settings',
                    style: TextStyle(
                        color: Color(0xff201A1B),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding:
                          EdgeInsets.only(top: 25, left: 46, right: 46),
                      leading: SvgPicture.asset('assets/PPP.svg'),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 19, left: 12),
                        child: Text('Adarsh Fernando',
                            style: RobotoFont().T_TextTitle),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8, left: 12),
                        child: Text('AdarshFernando@gmail.com',
                            style: RobotoFont().AS_TextTitle),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 9, right: 5),
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xff201A1B),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      height: 55,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Manage your Google Account',
                            textAlign: TextAlign.center,
                            style: RobotoFont().AS_TextTitle,
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xfff3edf3),
                            shape: StadiumBorder(),
                            side: BorderSide(color: Color(0xff564c52)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                            ),
                            child: Text('Theme',
                                style: RobotoFont()
                                    .AR_TextTitle
                                    .copyWith(color: Color(0xff4D444C))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: RadioListTile(
                                value: radio.Default,
                                title: Text('Default',
                                    style: RobotoFont().AS_TextTitle),
                                activeColor: Color(0xff8B418F),
                                groupValue: _value,
                                onChanged: (radio? val) {
                                  setState(() {
                                    _value = val!;
                                  });
                                }),
                          ),
                          RadioListTile(
                              value: radio.Androidbrand,
                              title: Text('Android brand',
                                  style: RobotoFont().AS_TextTitle),
                              activeColor: Color(0xff8B418F),
                              groupValue: _value,
                              onChanged: (radio? val) {
                                setState(() {
                                  _value = val!;
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  child: Text('Appearance',
                                      style: RobotoFont().AR_TextTitle),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: RadioListTile(
                                      value: appearance.Systemdefault,
                                      title: Text('System default',
                                          style: RobotoFont().AS_TextTitle),
                                      activeColor: Color(0xff8B418F),
                                      groupValue: _values,
                                      onChanged: (appearance? val) {
                                        setState(() {
                                          _values = val!;
                                        });
                                      }),
                                ),
                                RadioListTile(
                                    value: appearance.Light,
                                    title: Text('Light',
                                        style: RobotoFont().AS_TextTitle),
                                    activeColor: Color(0xff8B418F),
                                    groupValue: _values,
                                    onChanged: (appearance? val) {
                                      setState(() {
                                        _values = val!;
                                      });
                                    }),
                                RadioListTile(
                                    value: appearance.Dark,
                                    title: Text('Dark',
                                        style: RobotoFont().AS_TextTitle),
                                    activeColor: Color(0xff8B418F),
                                    groupValue: _values,
                                    onChanged: (appearance? val) {
                                      setState(() {
                                        _values = val!;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('App version'),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text('0.0.2',
                                  style: RobotoFont().AS_TextTitle),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('App version'),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text('0.0.2',
                                  style: RobotoFont().AS_TextTitle),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Card(
                              color: Color(0xffEDDEE8),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                              ),
                              child: Center(
                                child: Container(
                                    width: 300,
                                    height: 64,
                                    child: ListTile(
                                        leading: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                            ),
                                            child: Text('Switch text')),
                                        trailing: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Switch(
                                            inactiveTrackColor:
                                                Color(0xff4d444c),
                                            activeColor: Color(0xff4d444c),
                                            value: _off,
                                            onChanged: (value) {
                                              setState(() {
                                                _off = value;
                                                if (_off) {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Textsearch()),
                                                  );
                                                }
                                              });
                                            },
                                          ),
                                        ))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
