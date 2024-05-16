import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          TextButton(onPressed: (){}, child: Text('Filter',style: TextStyle(color: Colors.grey),))

        ],),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
          child: Text('Notification',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
        ),
        Expanded(child:
        ListView(
          shrinkWrap: true,
          children: [

            item(Icons.shopping_bag,'salons','4 hours ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'products','39 minutes ago','Your Booking appointment has  been    Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'salons','4 hours ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'products','39 minutes ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'salons','4 hours ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'products','39 minutes ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'salons','4 hours ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            item(Icons.shopping_bag,'salons','39 minutes ago','Your Booking appointment has been'),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        )),
      ],
    ));
  }
  Widget item(IconData icon, String title, String time, String desc,)=>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
             color: Colors.grey[100],
             borderRadius: BorderRadius.circular(10)),
             child:   Icon(icon,color: Colors.deepPurpleAccent,),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Text(title,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                  Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: 30,
                    child: Row(
                      children: [

                        Expanded(child: Text(desc,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                      ],
                    ),
                  ),
                  Text(time,style: TextStyle(fontSize:16,color: Colors.grey),),

        ],),


      ],),
  );
}
