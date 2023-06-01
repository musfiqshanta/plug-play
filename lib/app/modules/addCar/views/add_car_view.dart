import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../signIn/views/sign_in_view.dart';
import '../controllers/add_car_controller.dart';

class AddCarView extends GetView<AddCarController> {
  AddCarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Car'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Car Details",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome To Plug & Play",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 35,
                ),

                TextField(
                  readOnly: true,
                  controller: TextEditingController(text: "Tesla"),
                  decoration: InputDecoration(
                      label: Text("Vehicle Model"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1))),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: TextEditingController(text: "2023"),
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  decoration: InputDecoration(
                      label: Text("Vehicle Year"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1))),
                ),

                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: TextEditingController(text: "25423"),
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text("License Plate"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1))),
                ),

                const SizedBox(
                  height: 15,
                ),
                // CheckboxListTile(
                //   checkColor: Colors.white,
                //   value: Get.find<SignUpController>().isChecked,
                //   onChanged: (bool? value) {},
                //   title: Text("I agree to the Terms & Conditions"),
                //   controlAffinity: ListTileControlAffinity.leading,
                // ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Get.theme.primaryColor),
                        fixedSize: MaterialStateProperty.all(
                            Size(Get.mediaQuery.size.width, 50))),
                    onPressed: () {
                      Get.to(AddCarView(), transition: Transition.rightToLeft);
                    },
                    child: Text(
                      "Add Car",
                      style: TextStyle(fontSize: 22),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
