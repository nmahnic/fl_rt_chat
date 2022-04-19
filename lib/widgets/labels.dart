import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  
  final String text;
  final String btnText;
  final VoidCallback onPressed;

  const Labels({ 
    Key? key,
    required this.text,
    required this.btnText,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style:  const TextStyle( color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),),
        const SizedBox(height: 10,),
        GestureDetector(
          child: Text(btnText, style:  TextStyle( color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),),
          onTap: onPressed,
        ),
      ],
    );
  }
}