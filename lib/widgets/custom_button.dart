import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const CustomButtom({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
      onPressed: onPressed, 
      child: SizedBox(
        width: double.infinity,
        height: 55,
          child: Center(
            child: Text( text , style: const TextStyle( color: Colors.white, fontSize: 17 )),
          ),
      ),
    );
  }
}
