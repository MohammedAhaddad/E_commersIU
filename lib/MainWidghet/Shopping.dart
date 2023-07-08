import 'package:e_commerce/widget/BottmBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopping extends StatelessWidget {
  Shopping({Key? key}) : super(key: key);
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottmBar(1),
      backgroundColor: const Color(0xFF333742),
      appBar: AppBar(
        // bottom: TabBar(tabs: [Text("Tap1"), Text("Tap1")]),
        backgroundColor: const Color(0xFF333742),
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Shopping",
              style: GoogleFonts.getFont("Poppins",
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Icon(
                Icons.notifications,
                color: Colors.white70,
                size: 35,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 7,
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          )
        ]),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Center(
                  child: Image.asset(
                    "assets/Group11094.png",
                    width: 700,
                  ),
                ));
          },
        ),
      ),
      body: Center(
          child: Text("Shopping",
              style: GoogleFonts.getFont("Poppins",
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white))),
    );
  }
}
