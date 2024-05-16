import 'package:flutter/material.dart';
import 'package:styley/Screens/LoginScreens/ManuallyLocationScreen.dart';

import '../../components.dart';
import '../LayOutScreens/layoutScreen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                alignment: Alignment.bottomLeft,
          child:            CircleAvatar(backgroundImage:const AssetImage('assets/images/location.png') ,radius:screenSize.width*0.1 ,backgroundColor: Colors.transparent,),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text('Hello,  nice to   meet you!',style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.1,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text('Set your location to start find salon   around you',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Center(
                  child: defaultMaterialButton(
                      function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LayoutScreen()),
                    );
                  }, text: 'Use current location', context: context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),child: Text('We only access your location while you are using',style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: InkWell(onTap:(){
                  navigateTo(context, ManuallyLocationScreen());

                },child: Text('or set your location manually',style: TextStyle(color: Colors.deepPurple,fontSize: screenSize.width*0.04,),textAlign: TextAlign.start,)),
              ),

            ],
          ),
        ),),
    );
  }
}
