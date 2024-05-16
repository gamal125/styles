import 'package:flutter/material.dart';
import 'package:styley/components.dart';

class PaymentScreen extends StatefulWidget {
    PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var controller1=TextEditingController();

    var controller2=TextEditingController();

    var controller3=TextEditingController();

    var controller4=TextEditingController();

bool index=false;

  @override
  Widget build(BuildContext context) {
    var imagePath= 'assets/images/visa.png';
    return   Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){}, child: Text('Add New',style: TextStyle(color: Colors.grey),))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
          child: Text('Payment',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),),
        ),
        Container(
          width:double.infinity,
          height:MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)),
        ),
          const SizedBox(height: 20,),
          defaultTextFormCardField(
            fillColor: Colors.grey[300],
              controller: controller1,
              keyboardType: TextInputType.text,
              validate: (String? x){return null;},
              label: 'Card Number'),
          defaultTextFormCardField(
              fillColor: Colors.grey[300],
              controller: controller2,
              keyboardType: TextInputType.text,
              validate: (String? x){return null;},
              label: 'Card Holder'),
          Row(children: [
            Expanded(
              child: defaultTextFormCardField(
                  fillColor: Colors.grey[300],
                  controller: controller3,
                  keyboardType: TextInputType.text,
                  validate: (String? x){return null;},
                  label: 'Expires'),
            ),
            Expanded(
              child: defaultTextFormCardField(
                  fillColor: Colors.grey[300],
                  controller: controller4,
                  keyboardType: TextInputType.text,
                  validate: (String? x){return null;},
                  label: 'CVC'),
            ),
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 18.0,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {

                    setState(() {
                      index=!index;
                    });
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors:[ index
                              ?Colors.deepPurpleAccent:Colors.transparent,index
                              ?Colors.cyan:Colors.transparent]),
                      shape: BoxShape.circle,
                      border:!index
                          ? Border.all(
                        color: Colors.grey,
                        width: 3,
                      ):null,
                    ),
                    child: index
                        ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Text('Save Card Information',style: TextStyle(color:  index ?Colors.grey:Colors.grey,fontSize: MediaQuery.of(context).size.width*0.04,),),



              ],
            ),
          ),
     Spacer(),
          Center(child: defaultMaterialButton(function: (){}, text: 'Save', context: context)),
          SizedBox(height:10)
      ],),
    );
  }
}
