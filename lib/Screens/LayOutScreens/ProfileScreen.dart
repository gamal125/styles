 import 'package:flutter/material.dart';
import 'package:styley/components.dart';

import 'PaymentScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});



  @override
  Widget build(BuildContext context) {
   var imagePath= 'assets/images/onboarding3.jpg';
    return  SafeArea(
        child: ListView(
        children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              width:double.infinity,
              height:MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)),
            ),
            Container(

              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gamal Hegazi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Text('gamal461998@gmail.com',style: TextStyle(fontSize: 14,color: Colors.white),),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration( gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.deepPurpleAccent,Colors.cyan]),shape: BoxShape.circle),
                        child: Icon(Icons.edit,color: Colors.white,)),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0,right: 15.0,left: 15.0,),
          child: Text('Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
        ),
        button(Icons.lock,"ChangePassword",(){}),
        button(Icons.notifications,"Notifications",(){}),
        button(Icons.back_hand,"privacy settings",(){}),
        button(Icons.logout,"Sign Out",(){}),
        Padding(
          padding: const EdgeInsets.only(top: 15.0,right: 15.0,left: 15.0,),
          child: Text('Payments Cards',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0,right: 15.0,left: 15.0,),
            child: Text('No Cards yet!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey)),
          ),
        ),
        SizedBox(height: 90,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: (){
                    navigateTo(context, PaymentScreen());
                  },child: Text('Add New Card',style: TextStyle(fontSize: 14,color: Colors.deepPurpleAccent),)),
                ],
              ),

              Container(

                  decoration: BoxDecoration( color: Colors.deepPurpleAccent,shape: BoxShape.circle),
                  child: Icon(Icons.add,color: Colors.white,)),
            ],
          ),
        ),

      ],));
  }
  Widget button(IconData perIcon,String text,void Function() fun)=>  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7),
  child: Column(
    children: [
      Row(
      children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.grey[200],shape: BoxShape.circle),
            child: Icon(perIcon,color: Colors.deepPurple,)),

      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: InkWell(
        onTap: fun,
        child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
      ),
      Spacer(),
      Icon(Icons.arrow_forward_ios),
      ],
      ),

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        child: Container(
          height: 1,
          color: Colors.grey[300],
        ),
      ),
    ],
  ),
  );
}
