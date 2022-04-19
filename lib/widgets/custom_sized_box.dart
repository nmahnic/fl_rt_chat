import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {

  final double proportion;

  const CustomSizedBox({
    Key? key,
    this.proportion = 0.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, height: MediaQuery.of(context).size.height * proportion);
  }
}