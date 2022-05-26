import 'package:flutter/material.dart';

class customBottomNavigationWidget extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  customBottomNavigationWidget(
      {this.selectedIndex, required this.onClicked, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "Profile",
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      // selectedItemColor: Colors.red[800],
      // backgroundColor: Colors.black,
      // unselectedItemColor: Colors.white,
    );
  }
}
