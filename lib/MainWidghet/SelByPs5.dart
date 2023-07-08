import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelByPs5 extends StatefulWidget {
  SelByPs5({Key? key}) : super(key: key);

  @override
  State<SelByPs5> createState() => _SelByPs5State();
}

class _SelByPs5State extends State<SelByPs5> {
  int indexes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333742),
      appBar: AppBar(
        backgroundColor: const Color(0xFF333742),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "PULSE 3D Wireless Headset",
          style: GoogleFonts.getFont(
            "Poppins",
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        titleSpacing: -10,
        actions: [
          GestureDetector(
            child: Center(
              child: Image.asset(
                "assets/heart.png",
                height: 20,
                width: 50,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "PULSE 3D",
                      style: GoogleFonts.getFont(
                        "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Wireless Headset",
                      style: GoogleFonts.getFont(
                        "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Category Name",
                      style: GoogleFonts.getFont(
                        "Poppins",
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Row(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.visibility,
                                    color: Colors.grey,
                                    size: 35,
                                  )),
                              Text(
                                "1.5 K",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 35,
                                  )),
                              Text(
                                "212",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.grey,
                                    size: 35,
                                  )),
                              Text(
                                "212",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
                ///////////////
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                          left: Get.width / 5,
                        ),
                        width: Get.width / 10,
                        height: Get.height / 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                        child: InkWell(
                          onTap: () {},
                        )),
                    Container(
                        margin: EdgeInsets.only(left: Get.width / 5),
                        width: Get.width / 10,
                        height: Get.height / 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: InkWell(
                          onTap: () {},
                        )),
                    Container(
                        margin: EdgeInsets.only(left: Get.width / 5),
                        width: Get.width / 10,
                        height: Get.height / 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFED5454),
                        ),
                        child: InkWell(
                          onTap: () {},
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
        CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  indexes = index;
                  log(indexes.toString());
                  setState(() {});
                },
                autoPlay: false,
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height / 2),
            items: [
              Column(
                children: [
                  Image.asset(
                    "assets/PS5HEADSETW.png",
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/had.png",
                  ),
                ],
              )
            ]),
        indexes == 0
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 10,
                      width: Get.width / 9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 10,
                      width: Get.width / 18,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))))
                ],
              )
            :
            ////////////////////
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 10,
                      width: Get.width / 25,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 10,
                      width: Get.width / 9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))))
                ],
              )
      ]),
    );
  }
}
