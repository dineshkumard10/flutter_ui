import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplepage/screens/textsearch.dart';
import '../fontstyle/textstyle.dart';

// ignore: camel_case_types, constant_identifier_names
enum radio { Default, Androidbrand }

// ignore: camel_case_types, constant_identifier_names
enum appearance { Systemdefault, Light, Dark }

enum ThemeMode { light, dark }

class Intresestpages extends StatefulWidget {
  const Intresestpages({super.key});

  @override
  State<Intresestpages> createState() => _IntresestpagesState();
}

class _IntresestpagesState extends State<Intresestpages> {
  radio _value = radio.Default;
  appearance _values = appearance.Systemdefault;
  bool _off = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: _values == appearance.Dark
                ? Colors.black
                : const Color(0xfff3edf3),
            extendBody: true,
            appBar: AppBar(
              backgroundColor: _values == appearance.Dark
                  ? Colors.black
                  : const Color(0xfff3edf3),
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
                child: Text(' Settings',
                    style: RobotoFont().TESS_TextTitle.copyWith(
                          color: _values == appearance.Dark
                              ? Colors.white
                              : Colors.black,
                        )),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                        const EdgeInsets.only(top: 25, left: 46, right: 46),
                    leading: SvgPicture.asset('assets/PPP.svg'),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 19, left: 12),
                      child: Text('Meghan Mehta',
                          style: RobotoFont().T_TextTitle.copyWith(
                                color: _values == appearance.Dark
                                    ? Colors.white
                                    : Colors.black,
                              )),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 12),
                      child: Text('mehta@gmail.com',
                          style: RobotoFont().AS_TextTitle.copyWith(
                                color: _values == appearance.Dark
                                    ? Colors.white
                                    : Colors.black,
                              )),
                    ),
                    trailing: const Padding(
                      padding: EdgeInsets.only(top: 9, right: 5),
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff201A1B),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    height: 55,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xfff3edf3),
                          shape: const StadiumBorder(),
                          side: const BorderSide(color: Color(0xff564c52)),
                        ),
                        child: Text(
                          'Manage your Google Account',
                          textAlign: TextAlign.center,
                          style: RobotoFont().AS_TextTitle,
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
                              style: RobotoFont().AR_TextTitle.copyWith(
                                    color: _values == appearance.Dark
                                        ? Colors.white
                                        : Colors.black,
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: RadioListTile(
                              value: radio.Default,
                              title: Text('Default',
                                  style: RobotoFont().AS_TextTitle.copyWith(
                                        color: _values == appearance.Dark
                                            ? Colors.white
                                            : Colors.black,
                                      )),
                              activeColor: const Color(
                                0xff8B418F,
                              ),
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
                                style: RobotoFont().AS_TextTitle.copyWith(
                                      color: _values == appearance.Dark
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                            activeColor: const Color(0xff8B418F),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Text('Appearance',
                                    style: RobotoFont().AR_TextTitle.copyWith(
                                          color: _values == appearance.Dark
                                              ? Colors.white
                                              : Colors.black,
                                        )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: RadioListTile(
                                    value: appearance.Systemdefault,
                                    title: Text('System default',
                                        style: RobotoFont()
                                            .AS_TextTitle
                                            .copyWith(
                                              color: _values == appearance.Dark
                                                  ? Colors.white
                                                  : Colors.black,
                                            )),
                                    activeColor: const Color(0xff8B418F),
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
                                      style: RobotoFont().AS_TextTitle.copyWith(
                                            color: _values == appearance.Dark
                                                ? Colors.white
                                                : Colors.black,
                                          )),
                                  activeColor: const Color(0xff8B418F),
                                  groupValue: _values,
                                  onChanged: (appearance? val) {
                                    setState(() {
                                      _values = val!;
                                    });
                                  }),
                              RadioListTile(
                                  value: appearance.Dark,
                                  title: Text('Dark',
                                      style: RobotoFont().AS_TextTitle.copyWith(
                                            color: _values == appearance.Dark
                                                ? Colors.white
                                                : Colors.black,
                                          )),
                                  activeColor: const Color(0xff8B418F),
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
                            child: Text('App version',
                                style: RobotoFont().AS_TextTitle.copyWith(
                                      color: _values == appearance.Dark
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text('0.0.2',
                                style: RobotoFont().AS_TextTitle.copyWith(
                                      color: _values == appearance.Dark
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                          ),
                        ),
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('App version',
                                style: RobotoFont().AS_TextTitle.copyWith(
                                      color: _values == appearance.Dark
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text('0.0.2',
                                style: RobotoFont().AS_TextTitle.copyWith(
                                      color: _values == appearance.Dark
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Card(
                            color: const Color(0xffEDDEE8),
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Center(
                              child: SizedBox(
                                  width: 300,
                                  height: 64,
                                  child: ListTile(
                                      leading: const Padding(
                                          padding: EdgeInsets.only(
                                            top: 8,
                                          ),
                                          child: Text('Switch text')),
                                      trailing: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Switch(
                                          inactiveTrackColor:
                                              const Color(0xff4d444c),
                                          activeColor: const Color(0xff4d444c),
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
            )));
  }
}
