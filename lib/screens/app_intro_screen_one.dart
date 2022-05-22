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
        backgroundColor: const Color.fromARGB(255, 193, 148, 229),
      ),
    );
    slides.add(
      Slide(
        description: "We deliver your order on or before time",
        pathImage: "images/on_time.png",
           backgroundColor: const Color.fromARGB(255, 193, 148, 229),
      ),
    );
    slides.add(
      Slide(
        description: "We accept all types of payment methods",
        pathImage: "images/payment_method.png",
             backgroundColor: const Color.fromARGB(255, 193, 148, 229),
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
      onDonePress: onDonePress,
    );
  }
}
