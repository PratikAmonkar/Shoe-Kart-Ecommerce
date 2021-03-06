import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_kart_ecommerce_app/screens/app_intro_screen_one.dart';
import 'package:shoe_kart_ecommerce_app/screens/home_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/login_screen.dart';
import 'package:shoe_kart_ecommerce_app/widgets/custom_alert_box_widget.dart';

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
    checkUserSignin();
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

  Future checkUserSignin() async {
    FirebaseAuth.instance.authStateChanges().listen(
      (event) {
        try {
          if (event == null) {
            setState(
              () {
                isLogin = false;
              },
            );
          } else {
            setState(
              () {
                isLogin = true;
              },
            );
          }
        } on Exception catch (e) {
          showMyDialog(context,
              "Error from server side please contact developer", "Alert");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isFirstTimeLoading
          ? const AppIntroScreen()
          : (isLogin ? const HomeScreen() : const LoginScreen()),
    );
  }
}
