import 'package:flutter/material.dart';
import 'package:styley/Screens/LoginScreens/VerifyScreen.dart';

import '../../components.dart';
import 'LanguageScreen.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();}

class _LoginScreenState extends State<LoginScreen> {
   var controller1=TextEditingController();
  var controller2=TextEditingController();
  var controller3=TextEditingController();
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;
    return  Scaffold(

      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Container(

          height:screenSize.height,
          width:screenSize.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/loginback.jpg'),opacity: 0.25,fit: BoxFit.fitHeight),
          boxShadow: [BoxShadow(color: Colors.black)]
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: screenSize.width*0.1,right: screenSize.width*0.1,top: screenSize.height*0.15),
            child: ListView(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome',style: TextStyle(color: Colors.white,fontSize: screenSize.width*0.1,fontWeight: FontWeight.bold),),
                Text('Back',style: TextStyle(color: Colors.white,fontSize: screenSize.width*0.1,fontWeight: FontWeight.bold),),
                Text('Sign in to continue',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,),),
                          ],),

              ],),
              SizedBox(height: screenSize.height*0.02),
              Column(

                children: [

                  defaultTextFormField(

                      controller: controller2,
                      keyboardType: TextInputType.emailAddress,
                      validate: (String? value ) {
                        if(value!.isEmpty){
                          return 'this field is required';
                        }
                        return null; },
                      label: 'E-mail',prefix: Icons.email),
                  defaultTextFormField(

                      controller: controller3,
                      keyboardType: TextInputType.text,
                      validate: (String? value ) {
                        if(value!.isEmpty){
                          return 'this field is required';
                        }
                        return null; },
                      label: 'Password',prefix: Icons.lock),




                ],),
              SizedBox(height: screenSize.height*0.02),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  defaultMaterialButton(function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
                    );
                  }, text: 'Sign in', context: context),
                  SizedBox(height: screenSize.height*0.02),
                  InkWell(onTap:(){
                    navigateTo(context, VerifyScreen());
                  },child: Text('Forget Password ?',style: TextStyle(color: Colors.grey[400],fontSize: screenSize.width*0.04,),)),
                  SizedBox(height: screenSize.height*0.02),
                  Text('or',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,),),
                  SizedBox(height: screenSize.height*0.04),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.08,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.white)),
            child: Center(child: Text('Sign in with Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04),)),
              )
                ],
              ),

            ],),
          ),

        ),
      ),);
  }
}
