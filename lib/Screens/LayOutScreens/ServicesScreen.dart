import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
   ServicesScreen({super.key});
final List<String> types=['Hair Styling','Face & Skin','Body Massage','Manicure','Bridal'];
 final List<String> disc=['746 salons From \$7','960 salons From \$11','237 From \$14','580 salons From \$8','190 From \$15'];
 final List<String> images=[
   'assets/images/services/hair-styling.jpg',
   'assets/images/services/face.jpg',
   'assets/images/services/BodyMassage.jpg',
   'assets/images/services/manicure.jpg',
   'assets/images/services/Bridal.jpg',
 ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(actions: [   Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(Icons.more_horiz,size:  MediaQuery.of(context).size.width*0.07,),
      )],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Services",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.07,fontWeight: FontWeight.bold),),
          ),

          Expanded(child: ListView.builder(itemBuilder: (context,index){return service(context,types[index],disc[index],images[index]);},itemCount: 5,)),
        ],
      ),

    );
  }
  Widget service(BuildContext context,String type,String disc,String image)=>Padding(
    padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 15),
    child: Container(
      alignment: AlignmentDirectional.centerStart,
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.16,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: DecorationImage(image: AssetImage(image),opacity: 0.7,fit: BoxFit.cover,),   boxShadow: [BoxShadow(color: Colors.black)]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(type,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.07,fontWeight: FontWeight.bold),),
            Text(disc,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),

        ],),
      ),
    ),
  );
}
