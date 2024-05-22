import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/screen/home_screen.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: section1Key,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          //   image: DecorationImage(
          // fit: BoxFit.cover,
          // // image: AssetImage(
          // //   "assets/images/construction.webp",
          // // ),
          ),
      padding: const EdgeInsets.all(0),
      child: Container(
          padding: const EdgeInsets.all(0),
          constraints: const BoxConstraints(maxWidth: 1233),
          child: SingleChildScrollView(
            child: Container(
              height: Responsive.isDesktop(context) ? 550 : 600,
              // decoration:
              //const BoxDecoration(color: Color.fromARGB(121, 54, 54, 54)),
              child: Responsive.isDesktop(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          //flex: 1,
                          child: Container(
                            height: 580,
                            child: Image.asset(
                              "assets/images/construction.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                            // flex: 1,
                            child: Container(
                          height: 580,
                          padding: const EdgeInsets.all(40),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 7, 35, 63)),
                          child: Center(
                            child: Text(
                              '''At Shri Shivgulab Infrastructure, we specialize in providing top-quality infrastructure solutions to meet your construction needs. With years of experience and a commitment to excellence, we are your trusted partner in delivering reliable and efficient services.''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      (Responsive.isMobile(context)) ? 18 : 20),
                            ),
                          ),
                        )),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/construction.webp",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 300,
                          padding: const EdgeInsets.all(13),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 7, 35, 63)),
                          child: Center(
                            child: Text(
                              '''At Shri Shivgulab Infrastructure, we specialize in providing top-quality infrastructure solutions to meet your construction needs. With years of experience and a commitment to excellence, we are your trusted partner in delivering reliable and efficient services.''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      (Responsive.isMobile(context)) ? 18 : 20),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          )),
    );
  }
}
