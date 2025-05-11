import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/controllers/auth_controller.dart';


class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => controller.register(context),
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () => context.go('/login'),
              child: const Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}
