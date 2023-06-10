import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:plugandplay/app/modules/vehicles/views/car_card.dart';
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/bg1.jpeg"), fit: BoxFit.cover)),
        child: Center(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CarCard();
                })),
      ),
    );
  }
}
