import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({Key? key}) : super(key: key);

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  late Uri url;
  late var response;
  Future<void> fetchData() async {
    url = Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs");
    response = await http.get(url);
    // print(response.body);
    // return url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: Text(
                  "Programs API-1",
                  style: GoogleFonts.notoSans(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: 1000,
              // width:,
              child: FutureBuilder(
                future: fetchData(),
                // initialData: InitialData,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    final data = json.decode(response.body);

                    // print(data["items"]["category"]);
                    return ListView.builder(
                      itemCount: data["items"].length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = data["items"][index];

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Name : ${item["name"]}",
                                        style: GoogleFonts.poppins(
                                            color: Colors.blue,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Category : ${item["category"].toString()}",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "lesson : ${item["lesson"].toString()}",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "createdAt : ${item["createdAt"].toString()}",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      },

                      // children: (data["items"] as List)
                      //     .map((e) => Text(e["category"].toString()))
                      //     .toList(),
                    );
                  } else {
                    // Show a progress indicator while the operation is running
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
