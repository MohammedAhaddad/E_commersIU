import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/MainWidghet/Item.dart';

import 'package:e_commerce/MainWidghet/ps5.dart';
import 'package:e_commerce/widget/BottmBar.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class mainScreen extends StatefulWidget {
  mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _nameState();
}

class _nameState extends State<mainScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottmBar(0),
      drawer: const Drawer(),
      backgroundColor: const Color(0xFF333742),
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
                    width: 700,
                  ),
                ));
          },
        ),
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            ),
            Text(
              "Categories",
              style: GoogleFonts.getFont("Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
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
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Ps5();
                        }));
                      },
                      child: Text(
                        "PS5",
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
                        "PS4",
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
                        "xbox one",
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
                        "xbox one X",
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
                        "xbox one Y",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF454D5A),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width / 1.5,
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintText: "  Search Prodact...",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF454D5A)),
                  width: MediaQuery.of(context).size.width / 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF454D5A), elevation: 0),
                    child: Center(child: Image.asset("assets/Group3156.png")),
                    onPressed: () {},
                  ))
            ],
          ),
        )

        /////////slider

        ,
        CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height / 1.8),
            items: [const item()])
      ]),
    );
  }
}
