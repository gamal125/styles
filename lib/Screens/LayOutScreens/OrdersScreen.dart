import 'package:flutter/material.dart';

import '../../components.dart';
import 'BookScreen.dart';
import 'SearchScreen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int index=0;
  var image='assets/images/cataloge/salon4.jpg';
  var image2='assets/images/cataloge/salon.png';
  var image3='assets/images/cataloge/salon3.jpeg';
  DateTime now = DateTime.now();


  @override
  Widget build(BuildContext context) {
    DateTime roundedNow = DateTime(now.year, now.month, now.day, now.hour, now.minute);
    String formattedTime = '${roundedNow.year}-${roundedNow.month}-${roundedNow.day}  ${roundedNow.hour}:${roundedNow.minute} Pm';

    return  SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){
                      navigateTo(context, SearchScreen());
                    }, icon:Icon(Icons.search,) )

                  ],),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 30),
                  child: Text('Orders',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                ),
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
          ),
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
         ],))
        ],
      ),
    );
  }
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
