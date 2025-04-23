import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // استدعاء الـ onPressed الذي سيتم تحديده عند الاستدعاء
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // الخلفية الحمراء
        foregroundColor: Colors.white, // النص باللون الأبيض
        minimumSize: Size(double.infinity, 50), // عرض الزر بعرض الشاشة
      ),
      child: Text('Sign Up'), // النص داخل الزر
    );
  }
}
