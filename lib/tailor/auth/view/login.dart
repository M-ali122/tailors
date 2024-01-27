import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/loginController.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: loginController.setUsername,
              decoration: const InputDecoration(
                  labelText: 'Username',
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: loginController.setPassword,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16),
            Obx(() {
              return ElevatedButton(
                onPressed: loginController.isLoggingIn.value
                    ? null
                    : loginController.login,
                child: loginController.isLoggingIn.value
                    ? const CircularProgressIndicator()
                    : const Text('Login'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
