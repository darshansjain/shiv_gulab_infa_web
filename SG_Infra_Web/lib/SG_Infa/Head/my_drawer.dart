import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/screen/home_screen.dart';

class MyDrawer extends StatefulWidget {
  final Function(bool) toggleAbout;

  final Function(GlobalKey) scrollToSection;

  final Key key;

  const MyDrawer(
      {required this.key,
      required this.toggleAbout,
      required this.scrollToSection})
      : super(key: key);
  @override
  State<MyDrawer> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 70,
            color: Color.fromARGB(255, 7, 35, 63),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      //color: Color.fromARGB(67, 0, 0, 0),
                    ),
                    child: Image.asset("assets/images/sm_infra.png")),
              ],
            ),
          ),
          Container(
            height: 800,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {
                    widget.toggleAbout(false); // Set 'about' to false
                    widget.scrollToSection(section1Key);
                    Navigator.pop(context);
                  },
                  title: const Text("Home"),
                  leading: const Icon(Icons.home),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {
                    widget.toggleAbout(false); // Set 'about' to false
                    widget.scrollToSection(section2Key);
                    Navigator.pop(context);
                  },
                  title: const Text("Our Products"),
                  leading: const Icon(Icons.add_box_sharp),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {
                    widget.toggleAbout(true);
                    Navigator.pop(context);
                  },
                  title: const Text("About"),
                  leading: const Icon(Icons.person_outline_sharp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
