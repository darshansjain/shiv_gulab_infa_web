import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/Body/Founder.dart';
import 'package:flutter_web/SG_Infa/Body/body_section.dart';

import 'package:flutter_web/SG_Infa/Head/header_section.dart';
import 'package:flutter_web/SG_Infa/about_us.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

import '../Footer/footer_section.dart';
import '../Head/my_drawer.dart';

bool about = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey section1Key = GlobalKey();
final GlobalKey section2Key = GlobalKey();
final GlobalKey section3Key = GlobalKey();
final GlobalKey section4Key = GlobalKey();
final GlobalKey section5Key = GlobalKey();

void _scrollToSection(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 200),
    curve: Curves.easeInOut,
  );
}

Future<void> _showUserInfoDialog(BuildContext context) async {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController desController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          '''Fill out the form for any inquiry''',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        content: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: mobileController,
                  decoration: const InputDecoration(labelText: 'Mobile no'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    } else if (value.length != 10) {
                      return 'Mobile number must be 10 digits';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: desController,
                  decoration:
                      const InputDecoration(labelText: 'How can we help ?'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please describe how we can help';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process user information here
                  String name = nameController.text;
                  String mobile = mobileController.text;
                  String email = emailController.text;
                  String description = desController.text;

                  // You can handle the user information as required
                  print(
                      'Name: $name, Mobile: $mobile, Email: $email, Description: $description');

                  // Close the dialog
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        ],
      );
    },
  );
}

bool isHovered = false;
bool isHovered2 = false;
bool isHovered3 = false;
bool isHovered4 = false;
bool isHovered5 = false;
bool isHovered6 = false;

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();

  final scrollController = ScrollController();

  AppBar homeNav(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: 100,
      iconTheme: const IconThemeData(
        color: Colors.black, // Change to your preferred color
      ),
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SizedBox(
            width: (Responsive.isDesktop(context)) ? w * 0.06 : 0,
          ),
          Image.asset(
            "assets/images/cmpLogo.png",
            height: 95,
            width: 180,
          ),
        ],
      ),
      actions: (Responsive.isDesktop(context))
          ? [
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    about = false;
                    setState(() {});
                    _scrollToSection(section1Key);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered2 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered2 = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    about = false;
                    setState(() {});
                    _scrollToSection(section2Key);
                  },
                  child: Text(
                    "Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered2 ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered6 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered6 = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    _scrollToSection(section3Key);
                  },
                  child: Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered6 ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered5 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered5 = false;
                  });
                },
                child: OutlinedButton(
                  onPressed: () {
                    _showUserInfoDialog(context);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: isHovered5 ? Colors.white : Colors.black,
                  ),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered5 ? Colors.black : Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ]
          : [
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered5 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered5 = false;
                  });
                },
                child: OutlinedButton(
                  onPressed: () {
                    _showUserInfoDialog(context);
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: isHovered5 ? Colors.white : Colors.black,
                      minimumSize: (Responsive.isMobile(context))
                          ? const Size(50, 35)
                          : const Size(60, 40)),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered5 ? Colors.black : Colors.white,
                      fontSize: (Responsive.isMobile(context)) ? 15 : 19,
                    ),
                  ),
                ),
              ),
              (Responsive.isMobile(context))
                  ? const SizedBox(
                      width: 2,
                    )
                  : const SizedBox(
                      width: 55,
                    )
            ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: (Responsive.isMobile(context))
          ? MyDrawer(
              key: UniqueKey(),
              toggleAbout: (value) {
                setState(() {
                  about = value;
                });
              },
              scrollToSection: (key) {
                _scrollToSection(key); // Your existing scrollToSection function
              },
            )
          : null,
      appBar: homeNav(context),
      // for mobile screen
      //drawer: MyDrawer(),
      body: Scrollbar(
        // isAlwaysShown: true, // Adjust as needed
        controller: _controller,
        showTrackOnHover: true,
        thumbVisibility: true,

        child: SingleChildScrollView(
          //primary: true,
          controller: _controller,
          child: const SafeArea(
              child: Column(
            children: [
              // Head
              HeaderSection(),
              // Body
              AboutUs(),
              BodySection(),

              Founder(),
              FooterSection(),
            ],
          )),
        ),
      ),
    );
  }
}
