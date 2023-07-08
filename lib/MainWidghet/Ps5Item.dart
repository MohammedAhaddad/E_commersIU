import 'package:e_commerce/MainWidghet/VeiwProdact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Ps5item extends StatelessWidget {
  const Ps5item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: Get.height / 50,
            left: Get.width / 50,
            right: Get.width / 50,
            bottom: Get.height / 100),
        //  width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF454D5A)),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (contaxt) {
              return const VeiwProdact();
            }));
          },
          child: Stack(children: [
            Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: Get.width / 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF333742),
                  ),
                  child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ))
              ],
            ),
            Positioned(
              top: Get.height / 4.5,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: Get.height / 6.2,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(62, 67, 73, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "PlayStation 5",
                          style: GoogleFonts.getFont("Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "\$ 890.00",
                              style: GoogleFonts.getFont("Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "\$ 900",
                              style: GoogleFonts.getFont("Poppins",
                                  fontSize: 10,
                                  color: Colors.white,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.white),
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              top: Get.height / 19,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/ps5-photo.png",
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                ],
              ),
            ),
            Positioned(
              top: Get.height / 5.2,
              child: Container(
                  margin: EdgeInsets.only(left: Get.width / 3),
                  width: Get.width / 9,
                  height: Get.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF333742),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                        child:
                            Image.asset("assets/fi-rr-shopping-cart-add.png")),
                  )),
            )
          ]),
        ));
  }
}
