import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  final validator;
  final onSaved;

  InputFieldArea({required this.hint,
    required this.obscure,
    required this.icon,
    this.validator, this.onSaved,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      // decoration: BoxDecoration(
      //   border: Border(
      //     bottom: BorderSide(
      //       width: 0.5,
      //       color: Colors.white30
      //     )
      //   )
      // ),
      child: TextFormField(
        // validator:(String? value) {
        //   if(value!.length<4)
        //     return'invalid';
        // },

        validator: validator,
        onSaved: onSaved,
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white30)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            errorStyle: TextStyle(color: Colors.orange),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
            contentPadding:
            const EdgeInsets.only(top: 15, right: 0, bottom: 20, left: 5)),
      ),
    );
  }
}
