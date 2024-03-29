import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tailors/widgets/button.dart';
import '../controller/loginController.dart';

class SignupScreen extends GetWidget<LoginController> {
static String route = 'SignupScreen';
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                height: 90.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(23),bottomRight: Radius.circular(23),
                  ),
                  color: const Color(0xff3870c3).withOpacity(.9),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 55),
                  child: Text('Sign Up'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 15.h,),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        onChanged: loginController.setUsername,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            )
                          //  border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        onChanged: loginController.setUsername,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            )
                          //  border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        onChanged: loginController.setPassword,
                        obscureText: true,
                        decoration:  InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 50.h,
                      child: TextField(
                        onChanged: loginController.setPassword,
                        obscureText: true,
                        decoration:  InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Obx(() {
                    //   return ElevatedButton(
                    //     onPressed: loginController.isLoggingIn.value
                    //         ? null
                    //         : loginController.login,
                    //     child: loginController.isLoggingIn.value
                    //         ? const CircularProgressIndicator()
                    //         : const Text('Login'),
                    //   );
                    // }),
                    SizedBox(
                      height: 50.h,
                      child: AppButton(
                        title: 'Login',
                        onTap: loginController.login,
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Container(
                      height: 50.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: const Color(0xff3870c3),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/google.png',height: 40,),
                          SizedBox(width: 10.w,),
                          const Text('Login with google',style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an Account?",style: TextStyle(fontWeight: FontWeight.w500),),
                        TextButton(
                            onPressed: () {},
                            child: const Text('SIGN UP')
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
