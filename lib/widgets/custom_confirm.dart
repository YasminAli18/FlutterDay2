import 'package:flutter/material.dart';

class CustomConfirmField extends StatelessWidget {
  const CustomConfirmField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true, // لإخفاء النص في حقل كلمة المرور
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        hintText: 'confirm Password',
        suffixIcon: const Icon(Icons.visibility_off),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
    );
  }
}
