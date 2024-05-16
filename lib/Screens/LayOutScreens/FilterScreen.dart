import 'package:flutter/material.dart';
import 'package:styley/components.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool switchValue = true;
  int index=1;
  int index2=1;


  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new), onPressed: () { Navigator.pop(context); },),
     title: const Text('Filter',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){}, child: Text('Reset',style: TextStyle(color: Colors.grey),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nearby',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text('Show Nearby',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey[600]),),
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
            ],),
          ),
            Container(height: 1,width: double.infinity,color: Colors.grey[300],),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sort Options',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Text('popularity',style: TextStyle(color:Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),
                      InkWell(
                        onTap: () {

                          setState(() {
                            index=0;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==0
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==0
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=0
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==0
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),


                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Star Rating (highest first)',style: TextStyle(color:Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),
                      InkWell(
                        onTap: () {

                          setState(() {
                            index=1;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==1
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==1
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=1
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==1
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Star Rating (highest first)',style: TextStyle(color:Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),
                      InkWell(
                        onTap: () {

                          setState(() {
                            index=2;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==2
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==2
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=2
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==2
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Best Reviewed First',style: TextStyle(color:Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),
                      InkWell(
                        onTap: () {

                          setState(() {
                            index=3;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==3
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==3
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=3
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==3
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Most Reviewed First',style: TextStyle(color:Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),
                      InkWell(
                        onTap: () {

                          setState(() {
                            index=4;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==4
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==4
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=4
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==4
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price (lowest first)',style: TextStyle(color: Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),

                      InkWell(
                        onTap: () {

                          setState(() {
                            index=5;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==5
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==5
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=5
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==5
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),




                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price (Higher first)',style: TextStyle(color: Colors.grey[600],fontSize: screenSize.width*0.05,fontWeight: FontWeight.bold),),

                      InkWell(
                        onTap: () {

                          setState(() {
                            index=6;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors:[ index==6
                                    ?Colors.deepPurpleAccent:Colors.transparent,index==6
                                    ?Colors.cyan:Colors.transparent]),
                            shape: BoxShape.circle,
                            border:index!=6
                                ? Border.all(
                              color: Colors.grey,
                              width: 3,
                            ):null,
                          ),
                          child: index==6
                              ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),




                    ],
                  ),
                ),
                Container(height: 1,width: double.infinity,color: Colors.grey[300],),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Star Rating',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width*0.755,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(width: 1,color: Colors.black) )
                    ,child: Row(children: [
                      InkWell(
                        onTap: (){setState(() {
                          index2=1;
                        });},
                        child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width*0.15,
                        decoration: BoxDecoration(color:index2==1?Colors.deepPurpleAccent:Colors.white,borderRadius: BorderRadius.only(topLeft:Radius.circular(15),bottomLeft:Radius.circular(15)),border:Border.all(width: 1,color: Colors.black) ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('1',style:index2==1? TextStyle(color:Colors.white):TextStyle(color:Colors.deepPurpleAccent),),
                          Icon(Icons.star,color: index2==1?Colors.white:Colors.deepPurpleAccent,size: 15,)
                        ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){setState(() {
                          index2=2;
                        });},
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(color:index2==2?Colors.deepPurpleAccent:Colors.white,border:Border.all(width: 1,color: Colors.black) ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('2',style:index2==2? TextStyle(color:Colors.white):TextStyle(color:Colors.deepPurpleAccent),),
                              Icon(Icons.star,color: index2==2?Colors.white:Colors.deepPurpleAccent,size: 15,)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){setState(() {
                          index2=3;
                        });},
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(color:index2==3?Colors.deepPurpleAccent:Colors.white,border:Border.all(width: 1,color: Colors.black) ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('2',style:index2==3? TextStyle(color:Colors.white):TextStyle(color:Colors.deepPurpleAccent),),
                              Icon(Icons.star,color: index2==3?Colors.white:Colors.deepPurpleAccent,size: 15,)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){setState(() {
                          index2=4;
                        });},
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(color:index2==4?Colors.deepPurpleAccent:Colors.white,border:Border.all(width: 1,color: Colors.black) ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('4',style:index2==4? TextStyle(color:Colors.white):TextStyle(color:Colors.deepPurpleAccent),),
                              Icon(Icons.star,color: index2==4?Colors.white:Colors.deepPurpleAccent,size: 15,)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){setState(() {
                          index2=5;
                        });},
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(color:index2==5?Colors.deepPurpleAccent:Colors.white,borderRadius: BorderRadius.only(topRight:Radius.circular(15),bottomRight:Radius.circular(15)),border:Border.all(width: 1,color: Colors.black) ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('5',style:index2==5? TextStyle(color:Colors.white):TextStyle(color:Colors.deepPurpleAccent),),
                              Icon(Icons.star,color: index2==5?Colors.white:Colors.deepPurpleAccent,size: 15,)
                            ],),
                        ),
                      ),
                      ],),
                    ),
                  ),
                ),

                Center(child: defaultMaterialButton(function: (){}, text: 'Apply Filter', context: context))

              ],)
        ],),
      ),
    );
  }
}
