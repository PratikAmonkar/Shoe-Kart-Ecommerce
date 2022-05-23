import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shoe_kart_ecommerce_app/screens/home_screen.dart';

class AppIntroScreen extends StatefulWidget {
  const AppIntroScreen({Key? key}) : super(key: key);

  @override
  State<AppIntroScreen> createState() => _AppIntroScreenState();
}

class _AppIntroScreenState extends State<AppIntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        description: "We deliver your order safely on your door step",
        pathImage: "images/deliver_package.png",
        backgroundColor: Colors.white,
        styleDescription: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
    slides.add(
      Slide(
        description: "We deliver your order on or before time",
        pathImage: "images/on_time.png",
        backgroundColor: Colors.white,
        styleDescription: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
    slides.add(
      Slide(
        description: "We accept all types of payment methods",
        pathImage: "images/payment_method.png",
        backgroundColor: Colors.white,
        styleDescription: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      renderSkipBtn: TextButton(
        onPressed: () {
          onDonePress();
        },
        child: const Text(
          "Skip",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      renderNextBtn: const Icon(
        Icons.navigate_next,
        color: Colors.black,
        size: 40.0,
      ),
      renderDoneBtn: TextButton(
        onPressed: () {
          onDonePress();
        },
        child: const Text(
          "Done",
          style: TextStyle(color: Colors.black),
        ),
      ),
      colorDot: Colors.grey,
      colorActiveDot: Colors.black,
    );
  }
}
