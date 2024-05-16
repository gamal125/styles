import 'package:flutter/material.dart';

import '../../components.dart';
import 'BookScreen.dart';
import 'FilterScreen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int index=0;
  final double rating = 3;
  final double rating2 = 5;
  final double rating3 = 2;
  final double rating4 = 4;
  var image='assets/images/cataloge/salon4.jpg';
  var image2='assets/images/cataloge/salon.png';
  var image3='assets/images/cataloge/salon3.jpeg';
  @override
  Widget build(BuildContext context) {
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
                  TextButton(onPressed: (){
                    navigateTo(context, FilterScreen());

                  }, child: Text('Filter',style: TextStyle(color: Colors.grey),))

                ],),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 30),
                child: Text('Favorites',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              ),
              Row(children: [
                TextButton(onPressed: (){setState(() {
                  index=0;
                });}, child: Text('Salons',style:index==0? TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey),)),
                TextButton(onPressed: (){setState(() {
                  index=1;
                });}, child: Text('Stylist',style:index==1? TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey),)),
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
              item('140',"260",'Christopher Hair','Hair Salon',image,),
              Container(height: 1,color: Colors.grey[200],),
              item('140',"260",'Christopher Hair','Hair Salon',image2,),
              Container(height: 1,color: Colors.grey[200],),
              item('140',"260",'Christopher Hair','Hair Salon',image3,),
              Container(height: 1,color: Colors.grey[200],),
              item('140',"260",'Christopher Hair','Hair Salon',image2,),
              Container(height: 1,color: Colors.grey[200],),
              item('140',"260",'Christopher Hair','Hair Salon',image3,),
              Container(height: 1,color: Colors.grey[200],),
              item('140',"260",'Christopher Hair','Hair Salon',image,),
              Container(height: 1,color: Colors.grey[200],),
          ],)):
       index==1? Expanded(
           flex: 4,
           child: ListView(
             shrinkWrap: true,
             children: [
               item('140',"260",'Christopher Hair','Hair Salon',image,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image2,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image3,),

               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image,),
               Container(height: 1,color: Colors.grey[200],),
             ],)):
       Expanded(
           flex: 4,
           child: ListView(
             shrinkWrap: true,
             children: [

               item('140',"260",'Christopher Hair','Hair Salon',image2,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image3,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image2,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image3,),
               Container(height: 1,color: Colors.grey[200],),
               item('140',"260",'Christopher Hair','Hair Salon',image,),
               Container(height: 1,color: Colors.grey[200],),
             ],))
        ],
      ),
    );
  }
  Widget item(String rate,String price,String title,String type,String image,)=> InkWell(
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
                Row(

                  children: [
                    Text('from \$ $price',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    SizedBox(width: 5,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        if (index < rating.floor()) {
                          return Icon(Icons.star, color: Colors.deepPurpleAccent,size: 12,);
                        } else if (index < rating.ceil()) {
                          return Icon(Icons.star_half, color: Colors.deepPurpleAccent,size: 12,);
                        } else {
                          return Icon(Icons.star_border, color: Colors.deepPurpleAccent,size: 12,);
                        }
                      }),
                    ),
                    SizedBox(width: 5,),
                    Text(rate,style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ],
                ),

              ],),
            Spacer(),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),child: Icon(Icons.favorite,color: Colors.white,),)


          ],
        ),
      ),
    ),
  );
}
