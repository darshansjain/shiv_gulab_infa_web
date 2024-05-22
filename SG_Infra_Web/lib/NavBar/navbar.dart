import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/screen/home_screen.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => NavbarState();
}

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
            color: Colors.deepPurple,
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
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
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

class NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.deepPurple, // Change to your preferred color
      ),
      backgroundColor: Colors.black,
      title: Row(
        children: [
          (Responsive.isMobile(context))
              ? const SizedBox(
                  width: 0,
                )
              : const SizedBox(
                  width: 20,
                ),
          Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(67, 0, 0, 0),
              ),
              child: Image.asset("assets/images/logo.png")),
          const Text(
            "SG_Infa",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
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
                      color: isHovered ? Colors.white : Colors.deepPurple,
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
                      color: isHovered2 ? Colors.white : Colors.deepPurple,
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
                    isHovered3 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered3 = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    about = false;
                    setState(() {
                      _scrollToSection(section3Key);
                    });
                    _scrollToSection(section3Key);
                  },
                  child: Text(
                    "Services",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered3 ? Colors.white : Colors.deepPurple,
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
                    isHovered4 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered4 = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    about = false;
                    setState(() {});
                    _scrollToSection(section4Key);
                  },
                  child: Text(
                    "Clients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered4 ? Colors.white : Colors.deepPurple,
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
                    isHovered3 = true; // Flag to track hover state
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered3 = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    // _scrollToSection(section3Key);
                    about = true;
                    setState(() {});
                  },
                  child: Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered3 ? Colors.white : Colors.deepPurple,
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
                    backgroundColor:
                        isHovered5 ? Colors.white : Colors.deepPurple,
                  ),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered5 ? Colors.deepPurple : Colors.white,
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
                      backgroundColor:
                          isHovered5 ? Colors.white : Colors.deepPurple,
                      minimumSize: const Size(60, 40)),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovered5 ? Colors.deepPurple : Colors.white,
                      fontSize: (Responsive.isMobile(context)) ? 15 : 19,
                    ),
                  ),
                ),
              ),
              (Responsive.isMobile(context))
                  ? const SizedBox(
                      width: 5,
                    )
                  : const SizedBox(
                      width: 55,
                    )
            ],
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "WhatiLearnToday",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const InkWell(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const InkWell(
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const InkWell(
                child: Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Join Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          Text(
            "WhatiLearnToday",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                child: Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
