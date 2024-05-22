import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class SendFeedBack extends StatelessWidget {
  const SendFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      "https://cdn0.iconfinder.com/data/icons/most-usable-logos/120/Amazon-512.png",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText(
                        "Transforming Landscapes, Crafting Visions: Unleash the Potential of Your Land with Our Expertise."),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText("SM Infra"),
                  ],
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      "https://as2.ftcdn.net/v2/jpg/01/75/66/97/1000_F_175669788_FAEk2lMbed9wM2o8aZ0cn72kO6h6qehw.jpg",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText(
                        "Transforming Landscapes, Crafting Visions: Unleash the Potential of Your Land with Our Expertise."),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText("SM Infra"),
                  ],
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/crm.jpg",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText(
                        "Transforming Landscapes, Crafting Visions: Unleash the Potential of Your Land with Our Expertise."),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText("SM Infra"),
                  ],
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/crm.jpg",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText(
                        "Transforming Landscapes, Crafting Visions: Unleash the Potential of Your Land with Our Expertise."),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText("SM Infra"),
                  ],
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/crm.jpg",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText(
                        "Transforming Landscapes, Crafting Visions: Unleash the Potential of Your Land with Our Expertise."),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoSizeText("SM Infra"),
                  ],
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 250.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
