import 'package:flutter/material.dart';
import 'package:realtime_chat/models/custom_input.dart';

import '../models/custom_input.dart';

class CustomInput extends StatelessWidget {

  final CustomInputModel model;
  final TextEditingController textController;

  const CustomInput({
    Key? key,
    required this.model,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration( 
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0,5),
            blurRadius: 5
          )
        ]
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: model.keyboardType,
        obscureText: model.isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(model.icon),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: model.placeholder
        ),
      )
    );
  }
}