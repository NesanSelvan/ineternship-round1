import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mock_round1/api.dart';
import 'package:mock_round1/api1.dart';

class FrontPage extends StatefulWidget {
  static int index = 0;
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("object  ${FrontPage.index}");
  }

  bool _isPressed = false;
  bool _isPressedlearn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 900,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hello, Priya!",
                        style: GoogleFonts.lora(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 23)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("What do you wanna learn today?",
                        style: GoogleFonts.inter(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTapDown: (details) {
                          setState(() {
                            _isPressed = true;
                          });
                        },
                        onTapUp: (details) {
                          setState(() {
                            _isPressed = false;
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            _isPressed = false;
                          });
                        },
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ApiPage())),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.44,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                              color: _isPressed
                                  ? Colors.grey.shade300
                                  : Colors.white,
                              border: Border.all(color: Colors.blue, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.book,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Programs",
                                  style: GoogleFonts.inter(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.44,
                        // color: Colors.blue,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.help,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Get Help",
                                style: GoogleFonts.inter(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTapDown: (details) {
                            setState(() {
                              _isPressedlearn = true;
                            });
                          },
                          onTapUp: (details) {
                            setState(() {
                              _isPressedlearn = false;
                            });
                          },
                          onTapCancel: () {
                            setState(() {
                              _isPressedlearn = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.44,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                                color: _isPressedlearn
                                    ? Colors.grey.shade300
                                    : Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.auto_stories_rounded,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text("Learn",
                                    style: GoogleFonts.inter(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17))
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ApiScreen()))
                          // ignore: avoid_print
                          // print(FrontPage.index),
                          // Navigator.push(context,  HomePage())
                          ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.44,
                        // color: Colors.blue,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.assessment,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("DD Tracker",
                                style: GoogleFonts.inter(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 8, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Programs for you",
                          style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white54,
                              elevation:
                                  0 // Set the background color as transparent
                              ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("View all",
                                  style: GoogleFonts.inter(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.grey.shade600,
                                size: 20,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.31,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("LIFESTYLE",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "A complete guide for your new born baby",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("16 Lessons",
                                                  style: GoogleFonts.inter(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12)),
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.31,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img2.png",
                                      fit: BoxFit.fitHeight,
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("WORKING PARENTS",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "Understanding of human behaviour",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("12 Lessons",
                                                  style: GoogleFonts.inter(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12)),
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 8, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Events and experiences",
                          style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white54,
                              elevation:
                                  0 // Set the background color as transparent
                              ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("View all",
                                  style: GoogleFonts.inter(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.grey.shade600,
                                size: 20,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("BABYCARE",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "Understanding of human behaviour",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("13 Feb, Sunday",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12)),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.blue),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Book",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img3.png",
                                      fit: BoxFit.cover,
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("BABYCARE",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "Understanding of human behaviour",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("13 Feb, Sunday",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12)),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.blue),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Book",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 8, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lessons for you",
                          style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white54,
                              elevation:
                                  0 // Set the background color as transparent
                              ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("View all",
                                  style: GoogleFonts.inter(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.grey.shade600,
                                size: 20,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("BABYCARE",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "Understanding of human behaviour",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("13 Feb, Sunday",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12)),
                                                ),
                                                Icon(
                                                  Icons.lock_outline,
                                                  color: Colors.grey.shade500,
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: MediaQuery.of(context).size.width * 0.6,

                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/img3.png",
                                      fit: BoxFit.cover,
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  // height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("BABYCARE",
                                                style: GoogleFonts.inter(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                                "Understanding of human behaviour",
                                                style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("13 Feb, Sunday",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12)),
                                                ),
                                                Icon(
                                                  Icons.lock_outline,
                                                  color: Colors.grey.shade500,
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
