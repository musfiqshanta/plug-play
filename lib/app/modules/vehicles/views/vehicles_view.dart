import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../controllers/vehicles_controller.dart';

class VehiclesView extends GetView<VehiclesController> {
  const VehiclesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VehiclesView'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Slidable(
                      startActionPane:
                          ActionPane(motion: DrawerMotion(), children: [
                        SlidableAction(
                          onPressed: (context) {
                            // print(key);
                          },
                          backgroundColor: Color(0xffe74c3c),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_sharp,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Color(0xff27ae60),
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: 'Edit',
                        ),
                      ]),
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              // print(key);
                            },
                            backgroundColor: Color(0xffe74c3c),
                            foregroundColor: Colors.white,
                            icon: Icons.delete_sharp,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Color(0xff27ae60),
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: 'Edit',
                          ),
                        ],
                      ),
                      child: Container(
                          clipBehavior: Clip.none,
                          decoration: BoxDecoration(
                            color: Get.theme.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/img/car.jpg"),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "My Car $index",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "666-83-855",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))),
                );
              })),
    );
  }
}
