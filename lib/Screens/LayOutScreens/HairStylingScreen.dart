import 'package:flutter/material.dart';

import '../../components.dart';
import 'BookScreen.dart';

class HairStylingScreen extends StatefulWidget {
  HairStylingScreen({super.key});

  @override
  State<HairStylingScreen> createState() => _HairStylingScreenState();
}

class _HairStylingScreenState extends State<HairStylingScreen> {

  final double rating = 3;
  final double rating2 = 5;
  final double rating3 = 2;
  final double rating4 = 4;


  @override
  Widget build(BuildContext context) {
    var imagePath= 'assets/images/girl1.jpg';
    var imagePath2= 'assets/images/girl2.jpg';
    var imagePath3= 'assets/images/girl3.jpeg';
    return   Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new_rounded),),
        actions: [
          TextButton(onPressed: (){}, child: Text('Filter',style: TextStyle(color: Colors.grey),))
        ],
      ),
      body: ListView(

          children: [
      const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
      child: Text('Payment',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),),
    ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text('Featured',style: TextStyle(fontSize:16,fontWeight: FontWeight.w900),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Christopher Hair & beauty',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                  Row(

                    children: [
                      Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                      Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ],
                  ),

                ],),
            ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
            width:MediaQuery.of(context).size.width*0.7,
            height:MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)),
            ),
            SizedBox(width: 30,),
            Container(
            width:MediaQuery.of(context).size.width*0.7,
            height:MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(imagePath2),fit: BoxFit.fill)),
            ),
            SizedBox(width: 30,),
            Container(
            width:MediaQuery.of(context).size.width*0.7,
            height:MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(imagePath3),fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
    ),
            SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.all( 10),
                child: Column(

                  children: [
                    InkWell(
                      onTap:(){navigateTo(context, BookScreen());},
                      child: SingleChildScrollView(
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
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
                                      image: DecorationImage(image: AssetImage('assets/images/cataloge/salon3.jpeg',),fit: BoxFit.fill),
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
                                    Text('Christopher Hair'),
                                    Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                                    Row(

                                      children: [
                                        Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                                        Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      ],
                                    ),

                                  ],),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:(){navigateTo(context, BookScreen());},
                      child: SingleChildScrollView(
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
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
                                      image: DecorationImage(image: AssetImage('assets/images/cataloge/salon2.jpg',),fit: BoxFit.fill),
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
                                    Text('Christopher Hair'),
                                    Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                                    Row(

                                      children: [
                                        Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                                        Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      ],
                                    ),

                                  ],),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:(){navigateTo(context, BookScreen());},
                      child: SingleChildScrollView(
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
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
                                      image: DecorationImage(image: AssetImage('assets/images/cataloge/salon4.jpg',),fit: BoxFit.fill),
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
                                    Text('Christopher Hair'),
                                    Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                                    Row(

                                      children: [
                                        Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                                        Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      ],
                                    ),

                                  ],),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:(){navigateTo(context, BookScreen());},
                      child: SingleChildScrollView(
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
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
                                      image: DecorationImage(image: AssetImage('assets/images/cataloge/salon3.jpeg',),fit: BoxFit.fill),
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
                                    Text('Christopher Hair'),
                                    Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                                    Row(

                                      children: [
                                        Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                                        Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      ],
                                    ),

                                  ],),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:(){navigateTo(context, BookScreen());},
                      child: SingleChildScrollView(
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
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
                                      image: DecorationImage(image: AssetImage('assets/images/cataloge/salon2.jpg',),fit: BoxFit.fill),
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
                                    Text('Christopher Hair'),
                                    Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                                    Row(

                                      children: [
                                        Text('from \$280',style: TextStyle(color: Colors.grey,fontSize: 12),),
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
                                        Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      ],
                                    ),

                                  ],),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ]),
    floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.deepPurpleAccent,child: Icon(Icons.location_on_sharp,color: Colors.white,),),
    );

  }
}