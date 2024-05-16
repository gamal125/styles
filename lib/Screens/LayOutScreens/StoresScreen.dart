
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:styley/Screens/LayOutScreens/BookScreen.dart';
import 'package:styley/Screens/LayOutScreens/ProductsScreen.dart';
import 'package:styley/Screens/LayOutScreens/ServicesScreen.dart';
import 'package:styley/components.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  TextEditingController textController = TextEditingController();
  final double rating = 3;
  final double rating2 = 5;
  final double rating3 = 2;
  final double rating4 = 4;
  List<String> items=[
    'Facials (Deep Cleansing, Hydrating.jpg',
    'Microdermabrasion.jpg',
    'Skin Services.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;
    return  SafeArea(
      child: Column(
          children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
      Container(
        alignment: Alignment.bottomLeft,
        child:CircleAvatar(backgroundImage:const AssetImage('assets/images/location.png') ,radius:screenSize.width*0.045 ,backgroundColor: Colors.transparent,),

      ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Selected Location",style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.03,fontWeight: FontWeight.bold),),
              Text("Cairo , Egypt",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.06,fontWeight: FontWeight.bold),),

            ],
          )
          ],),
          IconButton(onPressed: (){}, icon:const Icon( Icons.search,size: 30,))
        ],
      ),
      CarouselSlider.builder(
      itemCount: items.length,
      options: CarouselOptions(
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 2),
      autoPlayAnimationDuration: Duration(milliseconds: 500),
      pauseAutoPlayOnTouch: true,
      viewportFraction: 1,
      aspectRatio: 16/6,
      enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIndex) {
      return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
      height: MediaQuery.of(context).size.height*0.25, // Adjust image height as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
      image: AssetImage('assets/images/Skin_Services/${items[index]}'), // Replace 'image.jpg' with your image path
      fit: BoxFit.fill,),),),
      );}),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Services",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    TextButton(onPressed: () { navigateTo(context, ServicesScreen()); },
                    child: Text("See All",style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,fontWeight: FontWeight.bold),)),
                   Icon(Icons.arrow_forward_ios,color: Colors.grey,size:screenSize.width*0.04 ,)
                  ],
                ),

              ],),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/salon.png',))

                        ),
                      ),
                      Text('Hair Styling'),
                      Text('From \$7',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/face.png',))

                        ),
                      ),
                      Text('Face & Skin'),
                      Text('From \$10',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/massage.png',))

                        ),
                      ),
                      Text('Massage Man'),
                      Text('From \$14',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/salon.png',))

                        ),
                      ),
                      Text('Hair Styling'),
                      Text('From \$7',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/face.png',))

                        ),
                      ),
                      Text('Face & Skin'),
                      Text('From \$10',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.deepPurpleAccent,Colors.cyan]),
                              borderRadius: BorderRadius.circular(
                                25,
                              ),

                              //  color: background,
                            ),
                            child:Container(
                                height: 45,
                                width: 45,
                                child: Image.asset('assets/images/cataloge/massage.png',))

                        ),
                      ),
                      Text('Massage Man'),
                      Text('From \$14',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Products",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      InkWell(onTap: (){navigateTo(context, ProductsScreen());},child: Text("See All",style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,fontWeight: FontWeight.bold),)),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,size:screenSize.width*0.04 ,)
                    ],
                  ),

                ],),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/cataloge/pro3.png',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Berlinne Nail'),
                      Text(' \$28',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/cataloge/pro1.jpg',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Airspun Face'),
                      Text(' \$151',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width*0.25,
                                height: MediaQuery.of(context).size.height*0.12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/cataloge/pro2.png',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Paris Parfu'),
                      Text(' \$280',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/cataloge/pro3.png',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Berlinne Nail'),
                      Text(' \$28',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/cataloge/pro1.jpg',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Airspun Face'),
                      Text(' \$151',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment : AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/cataloge/pro2.png',),fit: BoxFit.fill),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.grey,),color: Colors.white,)

                        ],
                      ),
                      Text('Paris Parfu'),
                      Text(' \$280',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Salons",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("See All",style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.04,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,size:screenSize.width*0.04 ,)
                    ],
                  ),

                ],),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap:(){navigateTo(context, BookScreen());},
                    child: SingleChildScrollView(
                      child: Column(
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
                          Text('Christopher Hair'),
                          Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                          Row(

                                    children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        if (index < rating.floor()) {
                          return Icon(Icons.star, color: Colors.orange,size: 12,);
                        } else if (index < rating.ceil()) {
                          return Icon(Icons.star_half, color: Colors.orange,size: 12,);
                        } else {
                          return Icon(Icons.star_border, color: Colors.orange,size: 12,);
                        }
                      }),
                    ),
                    SizedBox(width: 5,),
                    Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                    ],
                                  )

                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){navigateTo(context, BookScreen());},
                    child: SingleChildScrollView(
                      child: Column(
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
                          Text('style lounge'),
                          Text('face & skin',style: TextStyle(color: Colors.grey),),
                          Row(

                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(5, (index) {
                                  if (index < rating2.floor()) {
                                    return Icon(Icons.star, color: Colors.orange,size: 12,);
                                  } else if (index < rating2.ceil()) {
                                    return Icon(Icons.star_half, color: Colors.orange,size: 12,);
                                  } else {
                                    return Icon(Icons.star_border, color: Colors.orange,size: 12,);
                                  }
                                }),
                              ),
                              SizedBox(width: 5,),
                              Text('23',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){navigateTo(context, BookScreen());},
                    child: SingleChildScrollView(
                      child: Column(
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
                          Text('Christopher Hair'),
                          Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                          Row(

                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(5, (index) {
                                  if (index < rating3.floor()) {
                                    return Icon(Icons.star, color: Colors.orange,size: 12,);
                                  } else if (index < rating3.ceil()) {
                                    return Icon(Icons.star_half, color: Colors.orange,size: 12,);
                                  } else {
                                    return Icon(Icons.star_border, color: Colors.orange,size: 12,);
                                  }
                                }),
                              ),
                              SizedBox(width: 5,),
                              Text('75',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){navigateTo(context, BookScreen());},
                    child: SingleChildScrollView(
                      child: Column(
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
                          Text('Christopher Hair'),
                          Text('Hair Salon',style: TextStyle(color: Colors.grey),),
                          Row(

                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(5, (index) {
                                  if (index < rating.floor()) {
                                    return Icon(Icons.star, color: Colors.orange,size: 12,);
                                  } else if (index < rating.ceil()) {
                                    return Icon(Icons.star_half, color: Colors.orange,size: 12,);
                                  } else {
                                    return Icon(Icons.star_border, color: Colors.orange,size: 12,);
                                  }
                                }),
                              ),
                              SizedBox(width: 5,),
                              Text('140',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ]),
    );
  }
}
