import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_kart_ecommerce_app/screens/app_intro_screen_one.dart';
import 'package:shoe_kart_ecommerce_app/screens/cart_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/custom_bottom_navigation_Screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/home_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/payment_success_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/signup_screen.dart';

class RouteConfig extends StatefulWidget {
  const RouteConfig({Key? key}) : super(key: key);

  @override
  State<RouteConfig> createState() => _RouteConfigState();
}

class _RouteConfigState extends State<RouteConfig> {
  bool isFirstTimeLoading = true;
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);
    if (_seen) {
      setState(() {
        isFirstTimeLoading = false;
      });
    } else {
      setState(() {
        isFirstTimeLoading = true;
      });
      await prefs.setBool('seen', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(isFirstTimeLoading);
    return Scaffold(
      body: isFirstTimeLoading ? const AppIntroScreen() : const SignupScreen(),
    );
  }
}
