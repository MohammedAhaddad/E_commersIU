import 'package:e_commerce/MainWidghet/Ps5Item.dart';
import 'package:e_commerce/MainWidghet/mainWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ps5 extends StatelessWidget {
  const Ps5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333742),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF333742),
        elevation: 0,
        title: const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Stack(
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
                    // height: 100,
                    width: 700,
                  ),
                ));
          },
        ),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            ),
            Expanded(
              child: SizedBox(
                // width: MediaQuery.of(context).size.width / .2,
                height: MediaQuery.of(context).size.height / 20,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return mainScreen();
                        }));
                      },
                      child: Text(
                        "All",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "PS5",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "PS4",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //  fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one X",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one Y",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 1.25,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 300,
                ),
                itemBuilder: (context, index) {
                  return Ps5item();
                }))
      ]),
    );
  }
}
