import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class item extends StatefulWidget {
  const item({Key? key}) : super(key: key);

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF454D5A)),
      child: ListView(physics: BouncingScrollPhysics(), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sony",
                  style: GoogleFonts.getFont("Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ))
              ],
            ),
            Text(
              "Playstation 5",
              style: GoogleFonts.getFont("Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Image.asset(
              "assets/ps5-photo.png",
              height: MediaQuery.of(context).size.height / 3.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
//color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFffffff)),
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 18,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 0),
                          child: const Text(""),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF333742)),
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 18,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF333742), elevation: 0),
                          child: const Text(""),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF707070)),
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF707070), elevation: 0),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("\$890.00",
                              style: GoogleFonts.getFont("Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Stack(
                            children: [
                              Text("\$900",
                                  style: GoogleFonts.getFont(
                                    "Poppins",
                                    fontSize: 10,
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      )),
                      onPressed: () {},
                    ))
              ],
            )
          ],
        )
      ]),
    );
  }
}
