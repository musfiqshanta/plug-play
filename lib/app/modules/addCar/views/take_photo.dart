import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plugandplay/app/modules/addCar/controllers/add_car_controller.dart';

import 'add_car_view.dart';

class TakePhoto extends GetView<AddCarController> {
  const TakePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Car")),
      body: Stack(
        children: [
          Container(
              height: Get.height - 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/car.jpg"),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            height: Get.height,
            width: double.infinity,
            color: Color.fromARGB(177, 255, 255, 255),
            // color: Color.fromARGB(145, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Spacer(
                  flex: 1,
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "Add Car",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Welcome To Plug & Play",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )),
                Flexible(
                  flex: 1,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera,
                              size: 40,
                              color: Colors.black,
                            )),
                        label: Text("Enter Vehicle number"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(AddCarView(),
                            transition: Transition.leftToRight);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Get.theme.primaryColor),
                          fixedSize: MaterialStateProperty.all(
                              Size(Get.mediaQuery.size.width, 50))),
                      child: Text(
                        "Find Car",
                        style: TextStyle(fontSize: 22),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
