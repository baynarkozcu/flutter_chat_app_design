import 'package:flutter/material.dart';

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.icon,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController? controller;
  final String label;
  final IconData icon;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.black87),
      keyboardType: inputType,
      obscureText: icon == Icons.remove_red_eye_sharp,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: Icon(icon),
        labelStyle: const TextStyle(
          color: Colors.black26,
          fontSize: 18,
        ),
      ),
    );
  }
}
