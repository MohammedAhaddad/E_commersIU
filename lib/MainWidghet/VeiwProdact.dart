import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/MainWidghet/SelByPs5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VeiwProdact extends StatefulWidget {
  const VeiwProdact({Key? key}) : super(key: key);

  @override
  State<VeiwProdact> createState() => _VeiwProdactState();
}

class _VeiwProdactState extends State<VeiwProdact> {
  int indexes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333742),
      appBar: AppBar(
        backgroundColor: const Color(0xFF333742),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        title: Text(
          "PS5",
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
                "assets/share.png",
                height: 20,
                width: 50,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: Get.height / 7),
                height: Get.height - 173,
                decoration: const BoxDecoration(color: Color(0xFF454D5A)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
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
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
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
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
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
              ),
              Positioned(
                top: Get.height / 6,
                right: Get.width / 17,
                child: Container(
                  width: Get.width / 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF333742),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "  4.6",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFDD14B),
                        size: 20,
                      )
//
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: Get.height / 2,
                  right: Get.width / 2.5,
                  child: indexes == 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 10,
                                width: Get.width / 9,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 10,
                                width: Get.width / 18,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))))
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 10,
                                width: Get.width / 9,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))))
                          ],
                        )),
              Positioned(
                  top: Get.height / 9.5,
                  left: Get.width / 80,
                  child: Container(
                    width: Get.width,
                    child: CarouselSlider(
                        options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              indexes = index;
                              setState(() {});
                            },
                            autoPlay: false,
                            enlargeCenterPage: true,
                            height: MediaQuery.of(context).size.height),
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
                  )),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
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
                      const SizedBox(
                        width: 10,
                      ),
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
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                top: Get.height / 1.9,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "\$180.95",
                          style: GoogleFonts.getFont(
                            "Poppins",
                            fontSize: 17,
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: Get.width / 1.6),
                          width: Get.width / 6,
                          height: Get.height / 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF343743),
                          ),
                          child: Center(
                            child: Text(
                              "  24%",
                              style: GoogleFonts.getFont("Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF6AED8A)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: Get.height / 1.76,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "\$179.95",
                          style: GoogleFonts.getFont(
                            "Poppins",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: Get.height / 1.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.local_shipping,
                            color: Colors.white,
                          ),
                          Text(
                            "   Prices incl. VAT. plus shipping costs",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "  Lorem ipsum dolor sit amet, consectetuer adipiscing elit\n. Aenean commodo ligula eget dolor, Aenean massa.",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Choose Color",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.all(9),
                                  width: Get.width / 10,
                                  height: Get.height / 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF333742),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  width: Get.width / 10,
                                  height: Get.height / 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  width: Get.width / 10,
                                  height: Get.height / 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFFED5454),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: Get.height / 1.2),
                height: Get.height / 7,
                decoration: const BoxDecoration(
                    color: Color(0xFF333742),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Row(children: [
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      width: Get.width / 5,
                      height: Get.height / 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF454D5A),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Center(child: Image.asset("assets/heart.png")),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 17),
                      width: Get.width / 1.5,
                      height: Get.height / 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF454D5A),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SelByPs5();
                          }));
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/shopping-cart.png"),
                              Text(
                                "  ADD TO CART",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                      )),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
