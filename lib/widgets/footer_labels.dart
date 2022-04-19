import 'package:flutter/material.dart';

class FooterLabel extends StatelessWidget {
  const FooterLabel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Terminos y condiciones de uso', style:  TextStyle( fontWeight: FontWeight.w200),);
  }
}
