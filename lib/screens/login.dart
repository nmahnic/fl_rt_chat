import 'package:flutter/material.dart';
import 'package:realtime_chat/models/custom_input.dart';

import '../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo( titulo: 'Messenger'),
              _Form(),
              CustomSizedBox(proportion: 0.22,),
              _Labels(),
              FooterLabel()
            ]
             ),
        ),
      ),
   );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Labels(
      text: '¿No tienes cuenta?',
      btnText: 'Crea una ahora!',
      onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({ Key? key }) : super(key: key);

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passwdCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric( horizontal: 50 ),
      child: Column(
        children: [
          CustomInput( model: email, textController: emailCtrl ),
          CustomInput( model: password, textController: passwdCtrl ),

          CustomButtom( 
            text: 'Ingresar', 
            onPressed: () {
              print( 'email: ' +emailCtrl.text );
              print( 'passwd: ' +passwdCtrl.text );
            },
          ),
        ]
      ),
    );
  }

}
