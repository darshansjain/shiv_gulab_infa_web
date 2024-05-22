import 'package:flutter/material.dart';
import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class HeaderContaion extends StatelessWidget {
  const HeaderContaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 25, 19, 59)),
            child: Center(
              child: Text(
                '''At Shri Shivgulab Infrastructure, we specialize in providing top-quality infrastructure solutions to meet your construction needs. With years of experience and a commitment to excellence, we are your trusted partner in delivering reliable and efficient services.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (Responsive.isMobile(context)) ? 18 : 20),
              ),
            ),
          )),
        ],
      ),
    );
  }
}

// for mobile
class MobileHeaderContain extends StatelessWidget {
  const MobileHeaderContain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderBody(),
      ],
    );
  }
}

class HeaderBody extends StatefulWidget {
  const HeaderBody({
    super.key,
  });

  @override
  State createState() => HeaderBodyState();
}

class HeaderBodyState extends State {
  bool isHovered7 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 580,
          child: Image.asset(
            "assets/images/construction.webp",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 580,
          padding: const EdgeInsets.all(40),
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 25, 19, 59)),
          child: Center(
            child: Text(
              '''At Shri Shivgulab Infrastructure, we specialize in providing top-quality infrastructure solutions to meet your construction needs. With years of experience and a commitment to excellence, we are your trusted partner in delivering reliable and efficient services.''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (Responsive.isMobile(context)) ? 18 : 20),
            ),
          ),
        )
      ],
    );
  }
}
