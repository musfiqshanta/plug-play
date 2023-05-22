import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../signIn/views/sign_in_view.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter Your Email Adress",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            const Text("You will receiving a one-time password for the email"),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(width: 1))),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Get.theme.primaryColor),
                    fixedSize: MaterialStateProperty.all(
                        Size(Get.mediaQuery.size.width, 50))),
                onPressed: () {},
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 22),
                )),
            TextButton(
              onPressed: () {
                Get.to(SignInView(), transition: Transition.leftToRight);
              },
              child: Text("Back to Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
