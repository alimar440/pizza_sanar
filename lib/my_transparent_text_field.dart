import 'package:flutter/material.dart';

class MyTransparentTextField extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;

  const MyTransparentTextField({
    super.key,
    this.icon = Icons.fiber_manual_record_rounded,
    this.hintText = '',
    this.labelText = '',
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<MyTransparentTextField> createState() => _MyTransparentTextFieldState();
}

class _MyTransparentTextFieldState extends State<MyTransparentTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        obscureText: widget.isPassword,
        keyboardType: widget.keyboardType,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color: Colors.white),
          hintText: widget.hintText,
          labelText: widget.labelText,
          hintStyle: const TextStyle(color: Colors.white70),
          labelStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
