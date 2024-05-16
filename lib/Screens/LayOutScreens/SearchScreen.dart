import 'package:flutter/material.dart';
import 'package:styley/components.dart';

import 'BookScreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var controller=TextEditingController();
  int index=0;

  var image='assets/images/cataloge/salon4.jpg';
  var image2='assets/images/cataloge/salon.png';
  var image3='assets/images/cataloge/salon3.jpeg';

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    DateTime roundedNow = DateTime(now.year, now.month, now.day, now.hour, now.minute);
    String formattedTime = '${roundedNow.year}-${roundedNow.month}-${roundedNow.day}  ${roundedNow.hour}:${roundedNow.minute} Pm';

    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            width: double.infinity,
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                children: [
                  Expanded(child: defaultTextFormCardField(controller: controller, keyboardType: TextInputType.text, validate: (String?x ) {return null;  }, label: 'Search',suffix: Icons.dangerous_outlined,prefix: Icons.search)),
 TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel',style: TextStyle(color: Colors.black),))

                ] ,
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(children: [
                TextButton(onPressed: (){setState(() {
                  index=0;
                });}, child: Text('All',style:index==0? TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey),)),
                TextButton(onPressed: (){setState(() {
                  index=1;
                });}, child: Text('Appointment',style:index==1? TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey),)),
                TextButton(onPressed: (){
                  setState(() {
                    index=2;
                  });}, child: Text('Products',style:index==2? TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey),)),

              ],),
              Container(height: 1,color: Colors.grey[200],)

            ],),
          index==0?       Expanded(
              flex: 4,
              child: ListView(
                shrinkWrap: true,
                children: [
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image2,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image3,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image2,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image3,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image,),
                  Container(height: 1,color: Colors.grey[200],),
                ],)):
          index==1?     Expanded(
              flex: 4,
              child: ListView(
                shrinkWrap: true,
                children: [
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image2,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image3,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image,),
                  Container(height: 1,color: Colors.grey[200],),
                ],)):
          Expanded(
              flex: 11,
              child: ListView(
                shrinkWrap: true,
                children: [
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image2,),
                  Container(height: 1,color: Colors.grey[200],),
                  item(formattedTime,"260",'Christopher Hair','Hair Salon',image3,),
                  Container(height: 1,color: Colors.grey[200],),
                ],)),
          Expanded(
              flex: 5,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text('History',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  historyItem('Square Naya Salon'),
                  Container(height: 1,color: Colors.grey[200],),
                  historyItem('Nile art Beauty'),
                  Container(height: 1,color: Colors.grey[200],),
                  historyItem('Barry Salon & Spa'),                ],)),
        ],
      )),
    );
  }
  Widget historyItem(String text)=>
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(text),
      IconButton(onPressed: (){
        setState(() {
          controller.text=text;
        });
      }, icon: Icon(Icons.search,color: Colors.grey,))
    ],),
  );
  Widget item(String date,String price,String title,String type,String image,)=> InkWell(
    onTap:(){navigateTo(context, BookScreen());},
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.11,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.deepPurpleAccent,Colors.cyan]),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),

                  //  color: background,
                ),



              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(type,style: TextStyle(color: Colors.grey),),
                Text(date.toString(),style: TextStyle(color: Colors.grey),),

              ],),
            Spacer(),
            Row(

              children: [
                Text(' \$ $price',style: TextStyle(color: Colors.black,fontSize: 12),),

              ],
            ),

          ],
        ),
      ),
    ),
  );

}
