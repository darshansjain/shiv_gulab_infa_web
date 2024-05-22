import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/screen/home_screen.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      key: section2Key,
      width: size.width,
      color: Color.fromARGB(255, 240, 237, 246),
      height: 880,
      child: Container(
        padding: EdgeInsets.only(left: 60, right: 60, bottom: 3, top: 30),
        width: size.width,
        height: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: (Responsive.isMobile(context)) ? 15 : 55,
                ),
                Text(
                  "Our Products",
                  style: TextStyle(
                      fontSize: (Responsive.isMobile(context)) ? 35 : 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: (Responsive.isMobile(context)) ? 10 : 18,
            ),
            SizedBox(
              height: 650,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 650,
                    width: 350,
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 260,
                          width: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://t3.ftcdn.net/jpg/02/85/64/78/360_F_285647889_BpVb3KKxeKxmcMt6Cm1JMXxfsqzKulHw.jpg",
                                  )),
                              color: Color.fromRGBO(186, 222, 255, 1),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),

                          // margin: const EdgeInsets.all(30),
                          // child: Image.network(
                          //   "https://media.istockphoto.com/id/1133989173/photo/sand-destined-to-the-manufacture-of-cement-in-a-quarry.jpg?s=612x612&w=0&k=20&c=kbLMm9vuxoYfzIsBiu-_TyZ52EX7C3OSm_YdhZ5heM0=",
                          // ),
                        ),
                        const SizedBox(
                          width: 75,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "   Stone Crushing",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(25),
                              child: const Text(
                                "Our state-of-the-art stone crushing facilities ensure the production of high-quality aggregates for your construction projects. From road construction to building foundations, we have the expertise to deliver the materials you need.",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 650,
                    width: 350,
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 260,
                          width: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://media.istockphoto.com/id/1133989173/photo/sand-destined-to-the-manufacture-of-cement-in-a-quarry.jpg?s=612x612&w=0&k=20&c=kbLMm9vuxoYfzIsBiu-_TyZ52EX7C3OSm_YdhZ5heM0=",
                                  )),
                              color: Color.fromRGBO(186, 222, 255, 1),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                        ),
                        const SizedBox(
                          width: 75,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "   Sand Plant",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(25),
                              child: const Text(
                                "Harnessing cutting-edge technology, our sand plant produces premium-grade sand suitable for a wide range of applications. Whether it's for concrete production or landscaping projects, we guarantee consistent quality and timely delivery.",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 650,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(30),
                    // color: Color.fromRGBO(46, 45, 84, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 260,
                          width: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUn-oNzdE0MzV-UTSpodvEssY4AYRNs40QEw&s",
                                  )),
                              color: Color.fromRGBO(186, 222, 255, 1),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),

                          // margin: const EdgeInsets.all(30),
                          // child: Image.network(
                          //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUn-oNzdE0MzV-UTSpodvEssY4AYRNs40QEw&s",
                          // ),
                        ),
                        const SizedBox(
                          width: 75,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "    Block Pant",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(25),
                              child: const Text(
                                "Our state-of-the-art concrete block plant manufactures durable and customizable concrete blocks tailored to your project requirements. With a focus on precision and efficiency, we ensure that every block meets the highest standards of strength and durability.",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
