import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
              onPressed: () => controller.login(context),
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () => context.go('/register'),
              child: const Text("Don't have an account? Register"),
            )
          ],
        ),
      ),
    );
  }
}
