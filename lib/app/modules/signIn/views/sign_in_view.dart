import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../forgotPassword/views/forgot_password_view.dart';
import '../../profile/views/profile_view.dart';
import '../../signUp/views/sign_up_view.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text("Use Your Email to continue or create account"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        label: Text("Email"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Enter Your Password"),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1))),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Get.to(ForgotPasswordView(),
                            transition: Transition.rightToLeft);
                      },
                      child: Text(
                        "Recover Password",
                        style: TextStyle(color: Get.theme.primaryColor),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Get.theme.primaryColor),
                          fixedSize: MaterialStateProperty.all(
                              Size(Get.mediaQuery.size.width, 50))),
                      onPressed: () {
                        Get.to(
                          ProfileView(),
                          transition: Transition.downToUp,
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 22),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Don't Have an account",
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(SignUpView(), transition: Transition.leftToRight);
                    },
                    child: Text("Create an account",
                        style: TextStyle(
                          color: Get.theme.primaryColor,
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
