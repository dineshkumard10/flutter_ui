import 'package:flutter/material.dart';

import '../fontstyle/textstyle.dart';

class Textsearch extends StatefulWidget {
  const Textsearch({super.key});

  @override
  State<Textsearch> createState() => _TextsearchState();
}

class _TextsearchState extends State<Textsearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfffbf5f5),
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xfffbf5f5),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: SizedBox(
          height: 50,
          child: TextField(
            cursorColor: const Color(0x000000ff),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'jetpack com',
              contentPadding: const EdgeInsets.only(top: 10),
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xff201A1B),
              ),
              suffixIcon: const Icon(
                Icons.close,
                color: Color(0xff201A1B),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),

              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),

              // labelText: 'Enter your username',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Text('Recent searches', style: RobotoFont().TE_TextTitle),
            trailing: const Icon(
              Icons.close,
              color: Color(0xff201A1B),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading:
                  Text('jetpack compose', style: RobotoFont().TES_TextTitle),
              trailing: const Icon(
                Icons.close,
                color: Color(0xff201A1B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Text('backstate', style: RobotoFont().TES_TextTitle),
              trailing: const Icon(
                Icons.close,
                color: Color(0xff201A1B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Text('meghan mehta', style: RobotoFont().TES_TextTitle),
              trailing: const Icon(
                Icons.close,
                color: Color(0xff201A1B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Text('doc turner', style: RobotoFont().TES_TextTitle),
              trailing: const Icon(
                Icons.close,
                color: Color(0xff201A1B),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
