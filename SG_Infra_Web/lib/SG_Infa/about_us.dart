import 'package:flutter/material.dart';

import 'package:flutter_web/SG_Infa/screen/home_screen.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        key: section3Key,
        child: (!Responsive.isMobile(context))
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 60),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 70,
                            ),
                            const Text(
                              "ABOUT US",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: 600,
                                child: const Text(
                                  "At Shri Shivgulab Infrastructure, we are driven by a passion for excellence and a commitment to building a better future. Established with the vision of revolutionizing the infrastructure industry, we have emerged as a leader in providing comprehensive solutions for construction projects of all sizes.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                                width: 600,
                                child: const Text(
                                  "Our mission is to be the preferred choice for infrastructure solutions by delivering exceptional quality, innovative products, and superior service to our clients. We strive to contribute positively to the development of sustainable infrastructure while maintaining the highest standards of integrity, professionalism, and environmental responsibility.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Image.asset(
                                  "assets/images/s1.png",
                                  height: 90,
                                  width: 70,
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Image.asset(
                                  "assets/images/s2.png",
                                  height: 90,
                                  width: 70,
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Image.asset(
                                  "assets/images/s3.png",
                                  height: 120,
                                  width: 90,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          margin: const EdgeInsets.only(top: 80, right: 60),
                          //width: ,
                          child: Image.asset("assets/images/about_sec.png")),
                    ),
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      "ABOUT US",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 400,
                        child: const Text(
                          "At Shri Shivgulab Infrastructure, we are driven by a passion for excellence and a commitment to building a better future. Established with the vision of revolutionizing the infrastructure industry, we have emerged as a leader in providing comprehensive solutions for construction projects of all sizes.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        width: 400,
                        child: const Text(
                          "Our mission is to be the preferred choice for infrastructure solutions by delivering exceptional quality, innovative products, and superior service to our clients. We strive to contribute positively to the development of sustainable infrastructure while maintaining the highest standards of integrity, professionalism, and environmental responsibility.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/s1.png",
                          height: 90,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/images/s2.png",
                          height: 90,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/images/s3.png",
                          height: 120,
                          width: 90,
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 50, right: 20),
                        //width: ,
                        child: Image.asset("assets/images/about_sec.png")),
                  ],
                ),
              ));
  }
}
