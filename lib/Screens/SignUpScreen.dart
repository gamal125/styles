import 'package:flutter/material.dart';
import 'package:styley/Screens/LoginScreens/LoginScreen.dart';

import '../../components.dart';
import 'LoginScreens/LanguageScreen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        Text('User',style: TextStyle(color: Colors.white,fontSize: screenSize.width*0.1,fontWeight: FontWeight.bold),),
                        Text('Sign up to join',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,),),
                      ],),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(backgroundImage:const AssetImage('assets/images/loginIcon.jpg') ,radius:screenSize.width*0.1 ,),
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              shape: BoxShape.circle),child: const Icon(Icons.add,color: Colors.white,),)

                      ],
                    )
                  ],),
                SizedBox(height: screenSize.height*0.02),
                Column(

                  children: [
                    defaultTextFormField(

                        controller: controller1,
                        keyboardType: TextInputType.text,
                        validate: (String? value ) {
                          if(value!.isEmpty){
                            return 'this field is required';
                          }
                          return null; },
                        label: 'Name',prefix: Icons.person),
                    defaultTextFormField(

                        controller: controller2,
                        keyboardType: TextInputType.emailAddress,
                        validate: (String? value ) {
                          if(value!.isEmpty){
                            return 'this field is required';
                          }
                          return null; },
                        label: 'E-mail',prefix: Icons.link),
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

                SizedBox(
                  width: double.infinity,
                  height: screenSize.height*0.30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors:[ isChecked
                                          ?Colors.deepPurpleAccent:Colors.transparent,isChecked
                                          ?Colors.cyan:Colors.transparent]),
                                  shape: BoxShape.circle,
                                  border:!isChecked
                                      ? Border.all(
                                    color: Colors.deepPurple,
                                    width: 3,
                                  ):null,
                                ),
                                child: isChecked
                                    ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                                    : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Row(
                              children: [
                                Text('I agree to the ',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,),),
                                InkWell(onTap:(){},child: Text('Terms of Service',style: TextStyle(color: Colors.white,fontSize: screenSize.width*0.04,),)),

                              ],
                            ),

                          ],
                        ),
                      ),
                      defaultMaterialButton(function: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
                        );
                      }, text: 'Sign Up', context: context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Have an account?  ',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,),),
                          InkWell(onTap:(){
                            navigateAndFinish(context, LoginScreen());
                          },child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: screenSize.width*0.04,),)),

                        ],
                      ),
                    ],
                  ),
                ),
              ],),
          ),

        ),
      ),);
  }
}
