import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/station_details_controller.dart';

class StationDetailsView extends GetView<StationDetailsController> {
  const StationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Afcon Company'),
          actions: [
            Row(
              children: [
                Icon(Icons.directions_car),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tesla S",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/bg1.jpeg"), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The North Gate parking lot',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Afcon company",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Transform.rotate(
                              angle: 45,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.navigation_outlined),
                                iconSize: 40,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 30,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: Color(0xfffed330)),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment),
                              iconSize: 40,
                              color: Colors.black,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Color(0xfffed330),
                              ),
                              iconSize: 40,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 2.2,
                      height: 85,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "40 ",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Text(
                                            "₪",
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "5 H ",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.watch_later_outlined)
                                        ],
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/img/ccs.png",
                                    width: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 2.2,
                      height: 85,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "40 ",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Text(
                                            "₪",
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "5 H ",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Icon(Icons.watch_later_outlined)
                                        ],
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/img/type2.png",
                                    height: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: Get.width,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ChoiceChip(
                                label: Text("Availabel"),
                                labelStyle: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                selected: true,
                                selectedColor: Get.theme.primaryColor,
                                onSelected: (value) {},
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    "10 Km",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.directions_car_outlined),
                                  Text(
                                    "5 min",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Type 3",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    "Connections",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$ 0.5",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    "Per Kwh",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$ 0.1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    "Parking Fee",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: Get.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Get.theme.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(fontSize: 22),
                      )),
                )
              ]),
            ),
          ),
        ));
  }
}
