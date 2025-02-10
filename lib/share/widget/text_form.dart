import 'package:fe_lam/core/export.dart';
import 'package:flutter/material.dart';

const EdgeInsetsGeometry _padding = EdgeInsets.only(
  left: 0,
  top: 0,
  right: 0,
  bottom: kPadding,
);

class AppTextForm extends StatelessWidget {
  const AppTextForm({
    super.key,
    this.controller,
    this.validator,
    required this.label,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: "Enter your $label",
          border: const OutlineInputBorder(),
        ),
        validator: validator,
      ),
    );
  }
}

class PasswordTextForm extends StatefulWidget {
  const PasswordTextForm({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          if (value.length > 20) {
            return 'Password must be less than 20 characters';
          }
          return null;
        },
      ),
    );
  }
}
