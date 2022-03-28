import 'package:flutter/material.dart';
import 'package:kk/components/text_form_field.dart';
import 'package:kk/constants.dart';

class RoundPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;


  const RoundPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock,
            color: kPrimaryColor,),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.visibility,
            color: kPrimaryColor,)
      ),
    ));
  }
}