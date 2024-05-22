import 'package:flutter/material.dart';

import 'package:flutter_web/SG_Infa/screen/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // For mobile
        if (!Responsive.isDesktop(context))
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.deepPurple,
                  ))),
        // Site name and icon
        Image.asset(
          "assets/images/sm_infra.png",
          height: 70,
          width: 70,
        ),

        const Spacer(),
        //  if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              elevation: 17,
              minimumSize: const Size(25, 44)),
          onPressed: () {},
          child: const Text(
            "Contact",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
