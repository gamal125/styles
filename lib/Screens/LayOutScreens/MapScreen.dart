import 'package:flutter/material.dart';
import 'package:styley/components.dart';

import 'BookScreen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});
  final double rating = 3;
  final double rating2 = 5;
  final double rating3 = 2;
  final double rating4 = 4;
  @override
  Widget build(BuildContext context) {

    var imagePath= 'assets/images/map3.jpg';
    return   Scaffold(
      body: SafeArea(child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width:double.infinity,
                height:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(

                    children: [
                    Icon(Icons.arrow_back_ios_new_outlined,),
                    SizedBox(width: 30,),
                    Column(children: [
                      Text('Hair Styling',style: TextStyle(color: Colors.grey),),
                      Text('Hair Styling',style: TextStyle(color: Colors.grey),),
                    ],),
                    Spacer(),
                    Row(children: [
                      Icon(Icons.list),
                      Icon(Icons.filter_list_alt),
                    ],)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
                  child: Text('Hair Styling',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),),
                )
              ],)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(

                children: [
                  InkWell(
                    onTap:(){navigateTo(context, BookScreen());},
                    child: SingleChildScrollView(
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
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
                        elevation: 8,
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
                        elevation: 8,
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
                        elevation: 8,
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
                        elevation: 8,
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
        ],
      )),
    );
  }
}
