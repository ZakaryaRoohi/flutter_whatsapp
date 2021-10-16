import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/components/input_fileds.dart';
import 'package:validators/validators.dart';

class FormContainer extends StatelessWidget {

  final formKey;
  final  emailOnSaved;
  final passwordOnSaved;
  FormContainer({@required this.formKey, this.emailOnSaved, this.passwordOnSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Form(
            key: formKey,
              child: Column(
            children: [
              InputFieldArea(
                hint: "ایمیل کاربری",
                obscure: false,
                icon: Icons.person_outline,
                validator: (String? value){
                if(!isEmail(value!))
                  return "ایمیل وارد شده صحیح نمیباشد!";
                },
                onSaved: emailOnSaved,
              ),
              InputFieldArea(
                hint: "پسورد",
                obscure: true,
                icon: Icons.lock_outline,
                validator: (String? value){
                if(value!.length<5)
                    return 'رمز عبور حداقل باید 6 کاراکتر باشد!';
                },
                onSaved: passwordOnSaved,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
