import 'package:flutter/material.dart';
import 'package:styley/components.dart';

import 'LoginScreen.dart';

class VerifyScreen extends StatefulWidget {
   const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Forget Password',style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.065,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:25),
          child: Text('Enter Your email and will send you \n instruction on how to reset it',style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04),textAlign: TextAlign.center
            ,),
        ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.08,vertical: 10),
            child: defaultTextFormField(fillColor: Colors.grey[200],controller: controller, keyboardType: TextInputType.emailAddress, validate: (String? x){return null;}, label: 'email'),
          )
     ,
          defaultMaterialButton(function: (){
            navigateAndFinish(context, LoginScreen());
          }, text: 'Send', context: context,radius: 10),
      ],),

    );
  }
}
