import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components.dart';
class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int _selectedStylist=0;
  String? _selectedTime;
  String _calculateNextHour() {
    final now = DateTime.now();
    final nextHour = now.hour == 23 ? 0 : now.hour + 1;
    return '${nextHour.toString().padLeft(2, '0')}:00 ${nextHour < 12 ? 'AM' : 'PM'}';
  }
  final List<Map<String,String>> item=[
    {'type':'Hair Styling','subType':'salons From','duration':'50','price':'36'},
    {'type':'Face& Skin','subType':'Eyebrowse','duration':'25','price':'40'},
    {'type':'Hair Styling','subType':'salons From','duration':'50','price':'36'},
  ];
  final List<Map<String,String>> stylistItems=[
    {'image':'assets/images/stylist/1.png','name':'Alien Tom',},
    {'image':'assets/images/stylist/2.png','name':'Alex Thmes',},
    {'image':'assets/images/stylist/3.jpg','name':'Mali Gherk',},
    {'image':'assets/images/stylist/4.jpg','name':'Mess Tekah',},
    {'image':'assets/images/stylist/5.png','name':'Bomb Astek',},
  ];
  List<String> generateDayTimes() {
    List<String> dayTimes = [];
    for (int hour = 1; hour <= 12; hour++) {
      dayTimes.add('${hour.toString().padLeft(2, '0')}:00 AM');
    }
    for (int hour = 1; hour <= 12; hour++) {
      dayTimes.add('${hour.toString().padLeft(2, '0')}:00 PM');
    }
    return dayTimes;
  }
  @override
  void initState() {
    super.initState();
    _selectedTime = _calculateNextHour();
  }
  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;
    return  Scaffold(
   backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           children: [
             SizedBox(
               width: double.infinity,
               child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: TableCalendar(
                 firstDay: DateTime.now(),
                 lastDay: DateTime.utc(2030, 12, 31),
                 focusedDay: _focusedDay,
                 calendarFormat: _calendarFormat,
                 selectedDayPredicate: (day) {
                   return isSameDay(_selectedDay, day);
                 },
                 onDaySelected: (selectedDay, focusedDay) {
                   setState(() {
                     _selectedDay = selectedDay;
                     _focusedDay = focusedDay; // update `_focusedDay` as well
                   });
                 },
                 onFormatChanged: (format) {
                   setState(() {
                     _calendarFormat = format;
                   });
                 },
                 onPageChanged: (focusedDay) {
                   _focusedDay = focusedDay;
                 },
                        ),
               ),
             ),
             Container(
               height: 50,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: generateDayTimes().length,
                 itemBuilder: (context, index) {
                   final time = generateDayTimes()[index];
                   return GestureDetector(
                     onTap: () {
                       setState(() {
                         _selectedTime = time;
                       });
                     },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         width: 100, // Adjust the width as needed
                         decoration: BoxDecoration(
                           border: Border.all(color: _selectedTime == time ? Colors.white : Colors.deepPurpleAccent),
                           borderRadius: BorderRadius.circular(25),
                           color: _selectedTime == time ? Colors.deepPurpleAccent : null,
                         ),
                         child: Center(
                           child: Text(
                             time,
                             style: TextStyle(
                               color:_selectedTime == time ? Colors.white : Colors.deepPurpleAccent
                             ),
                           ),
                         ),
                       ),
                     ),
                   );
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Align(
                   alignment: AlignmentDirectional.topStart,
                   child: Text("Services",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),)),
             ),
             Container(
                 height: screenSize.height*0.27,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){return service(context,item[index],);},itemCount: item.length,)),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Align(
                   alignment: AlignmentDirectional.topStart,
                   child: Text("Stylists",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),)),
             ),
             Container(
                 height: screenSize.height*0.27,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){return Stylists(context,stylistItems[index],index);},itemCount: stylistItems.length,)),
             defaultMaterialButton(function: (){
          
             }, text: 'Book Now', context: context),
           ],
          ),
        ),
      ),
    );
  }
  Widget service(BuildContext context,Map<String,String> item,)=>Padding(
    padding: const EdgeInsets.only(top: 5.0,left: 10),
    child: Container(
      width: MediaQuery.of(context).size.width*0.4,
      height: MediaQuery.of(context).size.height*0.25,
      child: Card(

        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item["type"]!,style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                      Text(item["subType"]!,style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),),
                      Text('${item["duration"]!} minutes',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.025,fontWeight: FontWeight.bold),),


                    ],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Services fee",style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                      Text('\$ ${item["price"]!}',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold),),


                    ],),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
  Widget Stylists(BuildContext context,Map<String,String> item,int index)=>Padding(
    padding: const EdgeInsets.only(top: 5.0,left: 15),
    child: InkWell(
      onTap: () {

        setState(() {
          _selectedStylist=index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
             CircleAvatar(radius: 35,backgroundImage: AssetImage(item['image']!),),
             _selectedStylist==index?   Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors:[Colors.deepPurpleAccent,Colors.cyan]),
                  shape: BoxShape.circle,
                  border:null,
                ),
                child:  const Icon(
                  Icons.check,
                  color: Colors.white,
                )

              ):SizedBox(),
            ],
          ),
          SizedBox(height: 20,),
          Text(item['name']!),
        ],
      ),
    ),
  );

  bool isSameTimeSelected(String time) {
    return _selectedDay != null &&
        time == '${_selectedDay!.hour.toString().padLeft(2, '0')}:00';
  }
}
