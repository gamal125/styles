import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:styley/Screens/LayOutScreens/ProductDetailsScreen.dart';
import 'package:styley/components.dart';
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  TextEditingController textController = TextEditingController();
  List<Map<dynamic,dynamic>> productsList = [
    {'image':'assets/images/cataloge/pro3.png','name':'Berlinne Nail','price':'25','loved':true,'rating':4.5},
    {'image':'assets/images/products/5.jpeg','name':'Airspun Face','price':'151','loved':false,'rating':5.0},
    {'image':'assets/images/cataloge/pro2.png','name':'Paris Parfu','price':'280','loved':false,'rating':2.5},
    {'image':'assets/images/products/1.jpg','name':'Alien Tom','price':'50','loved':false,'rating':4.0},
    {'image':'assets/images/products/2.jpg','name':'Alien Tom','price':'50','loved':false,'rating':3.5},
    {'image':'assets/images/products/6.jpeg','name':'Alien Tom','price':'50','loved':false,'rating':0.5},
    {'image':'assets/images/products/1.jpg','name':'Alien Tom','price':'50','loved':false,'rating':1.5},
    {'image':'assets/images/products/2.jpg','name':'Alien Tom','price':'50','loved':false,'rating':3.0},
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Products",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.08,fontWeight: FontWeight.w900),),
              ),
              AnimSearchBar(
                width: MediaQuery.of(context).size.width*0.9,
                textController: textController,
                onSuffixTap: () {
                  setState(() {textController.clear();});
                },
                color: Colors.deepPurpleAccent,
                searchIconColor: Colors.white,

                helpText: "Search Text...",
                autoFocus: true,
                closeSearchOnSuffixTap: true,
                rtl: true,
                onSubmitted: (String value) { textController.text=value;},
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.32,
                  children: List.generate(
                      productsList.length, (index) => productItems(productsList[index],context,index)).animate(interval:const Duration(milliseconds: 100,) ).effect(curve: Curves.easeInOut).slideX(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
  Widget productItems(Map<dynamic,dynamic> productList,context,index)=> InkWell(
    onTap: (){
      navigateTo(context, ProductDetailsScreen(
        image: productList['image'],
        name: productList['name'],
        price: productList['price'],
        loved: productsList[index]['loved'], rating:  productList['rating'],));
    },
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(
    25,
    ),),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(productList['image']),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
                 ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      productsList[index]['loved']=!  productsList[index]['loved'];
                    });
                  },
                  child: CircleAvatar(backgroundColor:productsList[index]['loved']? Colors.red: Colors.white,radius: 15,child: Icon(Icons.favorite,color:productsList[index]['loved']?Colors.white: Colors.grey,size: 15,)),
                ),
              )
            ],
          ),
          Text(productList['name'],style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.038,fontWeight: FontWeight.bold),maxLines: 2,),
          Text('\$ ${productList['price']}',style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.04),)
        ],
      ),
    ),
  );
}
