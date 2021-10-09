import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/components/input_fileds.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Form(
              child: Column(
            children: [
              InputFieldArea(
                hint: "ایمیل کاربری",
                obscure: false,
                icon: Icons.person_outline,
              ),
              InputFieldArea(
                hint: "پسورد",
                obscure: true,
                icon: Icons.lock_outline,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
