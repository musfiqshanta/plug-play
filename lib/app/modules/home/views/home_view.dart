import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plugandplay/main.dart';

import '../../stationDetails/views/station_details_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plug & Play'),
        automaticallyImplyLeading: true,
        actions: [
          const Row(
            children: [
              Icon(Icons.directions_car),
              Center(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tesla S",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
            ],
          )
        ],
      ),
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/bg2.jpeg"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Plug & Play",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Good morning",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: Get.width / 1.5,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                label: Text("Find Chargers"),
                                labelStyle: TextStyle(
                                    color: Colors.white60, fontSize: 18),
                                suffixIcon: Icon(
                                  Icons.location_searching,
                                  size: 40,
                                ),
                                suffixIconColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ), // Change the color here
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.5))),
                          )),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_alt,
                            size: 35,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code,
                            size: 35,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const StationDetailsView());
                    },
                    child: SizedBox(
                      width: Get.width,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "The North Gate parking lot",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Afcon company',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Transform.rotate(
                                    angle: 45,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon:
                                          const Icon(Icons.navigation_outlined),
                                      iconSize: 40,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/img/ccs.png",
                                        width: 50,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "100 KW",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      )
                                    ],
                                  ),
                                  const Center(
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/img/type2.png",
                                        width: 50,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "50 KW",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      )
                                    ],
                                  ),
                                  const Center(
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ChoiceChip(
                                    label: const Text("Availabel"),
                                    labelStyle: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    selected: true,
                                    selectedColor: Get.theme.primaryColor,
                                    onSelected: (value) {},
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        "10 Km",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const Row(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Afcon company",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'The North Gate parking lot',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black54),
                                    )
                                  ],
                                ),
                                Transform.rotate(
                                  angle: 45,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.navigation_outlined),
                                    iconSize: 40,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/img/ccs.png",
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "100 KW",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    )
                                  ],
                                ),
                                const Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/img/type2.png",
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "50 KW",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    )
                                  ],
                                ),
                                const Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ChoiceChip(
                                  label: const Text("Availabel"),
                                  labelStyle: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  selected: false,
                                  selectedColor: const Color(0xff27ae60),
                                  onSelected: (value) {},
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    Text(
                                      "10 Km",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    )
                                  ],
                                ),
                                const Row(
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
                ],
              ),
            ),
          )),
    );
  }
}
