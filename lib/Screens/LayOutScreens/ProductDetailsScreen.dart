import 'package:flutter/material.dart';
import 'package:styley/components.dart';

import 'ProductsScreen.dart';

class ProductDetailsScreen extends StatelessWidget {
   ProductDetailsScreen({super.key,required this.image,required this.rating,required this.name,required this.price,required this.loved});
final String image;
final String name;
final String price;
   final bool loved;
   final double rating;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))],),
      body: ListView(children: [

        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)),
              
            ),

            Container(
              alignment: AlignmentDirectional.centerStart,
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(

                color: Colors.black.withOpacity(0.4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.06,color: Colors.white ),),
                  Text('\$ $price',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.cyan,fontSize:MediaQuery.of(context).size.width*0.045),)
                ],),
              ),
            )
            
          ],
        ),

      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width*0.06,color: Colors.black ),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.1,
            child: SingleChildScrollView(child: Text('Eye liner was first used in ancient India, ancient Egypt and Mesopotamia as a dark black line around the eyes. As early as 10,000 BC, Egyptians and Mesopotamians wore eye liner not only for aesthetics but to protect the skin from the desert sun. Research has also speculated that eye liner was worn to protect the wearer from the evil eye. The characteristic of having heavily lined eyes has been frequently depicted in ancient Egyptian art.',textAlign: TextAlign.justify,style: TextStyle(color: Colors.grey),),),),
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      if (index < rating.floor()) {
                        return Icon(Icons.star, color: Colors.deepPurpleAccent,size: 16,);
                      } else if (index < rating.ceil()) {
                        return Icon(Icons.star_half, color: Colors.deepPurpleAccent,size: 16,);
                      } else {
                        return Icon(Icons.star_border, color: Colors.deepPurpleAccent,size: 16,);
                      }
                    }),
                  ),
                  SizedBox(width: 5,),
                  Text(rating.toString(),style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(width: 5,),
                  Text('(320 ratings)',style: TextStyle(color: Colors.grey,fontSize: 16),),
                ],
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(border: Border.all(color: Colors.deepPurpleAccent,width: 2),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('View',style: TextStyle(color: Colors.deepPurpleAccent),),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.7,
                height: MediaQuery.of(context).size.height*0.06,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10)
          ),
        
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Text('product Quantity',style: TextStyle(color: Colors.grey,fontSize: 15),),

                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                        shape: BoxShape.circle

                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('2'),
                       ),
                     )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: MediaQuery.of(context).size.height*0.06,
                  height:MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                color: Colors.red
                  ),
                  child: Icon(Icons.favorite,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: defaultMaterialButton(function: (){}, text: 'Book Now', context: context),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Related Items",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.045,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  InkWell(onTap: (){navigateTo(context, ProductsScreen());},child: Text("See All",style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size:MediaQuery.of(context).size.width*0.04 ,)
                ],
              ),

            ],),
        ),
        Container(

          height: MediaQuery.of(context).size.height*0.25,
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
      ],),
    );
  }
}
