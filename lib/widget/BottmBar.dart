import 'package:e_commerce/MainWidghet/Profail.dart';
import 'package:e_commerce/MainWidghet/Shopping.dart';
import 'package:e_commerce/MainWidghet/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottmBar extends StatelessWidget {
  int? Index;
  BottmBar(Index) {
    this.Index = Index;
  }
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 9,
      decoration: BoxDecoration(
        color: Color(0xFF454D5A),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: GNav(
          selectedIndex: Index ?? 0,
          tabBorderRadius: 25,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xFF333742),
          backgroundColor: Color(0xFF454D5A),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabs: [
            GButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return mainScreen();
                }));
              },
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              onPressed: () {
                //   pageController.jumpToPage(1);
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Shopping();
                }));
              },
              icon: Icons.shopping_bag,
              text: "Shoping",
            ),
            GButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Profail();
                }));
              },
              icon: Icons.account_circle,
              text: "Profail",
            )
          ],
          onTabChange: (value) {
            Index = value;
          },
        ),
      ),
    );
  }
}
