import 'package:flutter/material.dart';
import 'package:shoe_kart_ecommerce_app/screens/cart_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/home_screen.dart';
import 'package:shoe_kart_ecommerce_app/screens/user_profile_screen.dart';
import 'package:shoe_kart_ecommerce_app/widgets/custom_bottom_navigation_widget.dart';

class CustomBottomNavigationScreen extends StatefulWidget {
  const CustomBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationScreen> createState() =>
      _CustomBottomNavigationScreenState();
}

class _CustomBottomNavigationScreenState
    extends State<CustomBottomNavigationScreen> {
  int selectedIndex = 0;

  List screens = [
    const HomeScreen(),
    const CartScreen(),
    const UserProfileScreen(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: customBottomNavigationWidget(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
    );
  }
}
