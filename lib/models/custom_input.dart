import 'package:flutter/material.dart';

class CustomInputModel {

  final IconData icon;
  final String placeholder;
  final TextInputType keyboardType;
  final bool isPassword;

  CustomInputModel(
    {
      required this.icon, 
      required this.placeholder, 
      this.keyboardType = TextInputType.text, 
      this.isPassword = false
    }
  );

}

final CustomInputModel name = CustomInputModel(
  icon: Icons.person, 
  placeholder: 'Nombre',
  keyboardType: TextInputType.text,
);

final CustomInputModel email = CustomInputModel(
  icon: Icons.mail_outline, 
  placeholder: 'Correo',
  keyboardType: TextInputType.emailAddress,
);

final CustomInputModel password = CustomInputModel(
  icon: Icons.lock_outline, 
  placeholder: 'Contraseña',
  keyboardType: TextInputType.text,
  isPassword: true,
);