import 'package:flutter/material.dart';
import 'package:realtime_chat/models/custom_input.dart';

import '../widgets/widgets.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
              Logo( titulo: 'Registro'),
              _Form(),
              CustomSizedBox(proportion: 0.05,),
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
      text: 'Ya tienes cuenta?',
      btnText: 'Ingresa con la misma',
      onPressed: () => Navigator.pushReplacementNamed(context, 'login')
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({ Key? key }) : super(key: key);

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwdCtrl = TextEditingController();
  final passwdCtrl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric( horizontal: 50 ),
      child: Column(
        children: [
          CustomInput( model: name, textController: nameCtrl ),
          CustomInput( model: email, textController: emailCtrl ),
          CustomInput( model: password, textController: passwdCtrl ),
          CustomInput( model: password, textController: passwdCtrl2 ),

          CustomButtom( 
            text: 'Crear', 
            onPressed: () {
              print( 'name: ' +nameCtrl.text );
              print( 'email: ' +emailCtrl.text );
              print( 'passwd: ' +passwdCtrl.text );
              print( 'passwd2: ' +passwdCtrl2.text );
            },
          ),
        ]
      ),
    );
  }

}
