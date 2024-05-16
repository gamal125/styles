import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:styley/Screens/LayOutScreens/layoutScreen.dart';
 import 'package:styley/main.dart';
import '../../components.dart';

class ManuallyLocationScreen extends StatefulWidget {
  const ManuallyLocationScreen({super.key});

  @override
  _ManuallyLocationScreenState createState() => _ManuallyLocationScreenState();
}

class _ManuallyLocationScreenState extends State<ManuallyLocationScreen> {
  TextEditingController textController = TextEditingController();
  late SharedPreferences _prefs;
  String _selectedLocation = '';
  int index=0;
  bool change=false;
  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _selectedLocation = _prefs.getString('selectedLocation') ?? 'Iceland';

    switch(_selectedLocation){
      case "Iceland":setState(() {index=0;});
      case "India":setState(() {index=1;});
      case "Indonesia":setState(() {index=2;});
      case "Iran":setState(() {index=3;});
      case "Iraq":setState(() {index=4;});
      case "Ireland":setState(() {index=5;});
      case "Italy":setState(() {index=6;});
      case "Japan":setState(() {index=7;});
      default:setState(() {index=0;});
    }

  }
  void _saveLocation(String location) async {

    await _prefs.setString('selectedLocation', location);
    setState(() {
      change=true;
      _selectedLocation = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;

    return Scaffold(
appBar: AppBar(
  leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
elevation: 1,
  title: Center(child: Text("Your Location",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.06,fontWeight: FontWeight.bold),),
  ),
),
      body: Column(
        children: [
          Padding(

            padding: const EdgeInsets.all(18.0),
            child: AnimSearchBar(
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
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: InkWell(onTap:(){},child: Text('or set your location manually',style: TextStyle(color: Colors.deepPurple,fontSize: screenSize.width*0.04,),textAlign: TextAlign.start,)),
          ),
 Align(
     alignment: AlignmentDirectional.centerStart,
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 18.0),
       child: Text("Choose your country",style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.065,fontWeight: FontWeight.bold),),
     )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: ListView(
                          shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Text('Iceland ',style: TextStyle(color:index==0 ?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),
                        InkWell(
                          onTap: () {
                            _saveLocation('Iceland');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('India',style: TextStyle(color:index==1?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),
                        InkWell(
                          onTap: () {
                            _saveLocation('India');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Indonesia ',style: TextStyle(color: index==2?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),
                        InkWell(
                          onTap: () {
                            _saveLocation('Indonesia');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Iran',style: TextStyle(color:  index==3 ?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),
                        InkWell(
                          onTap: () {
                            _saveLocation('Iran');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Iraq ',style: TextStyle(color:index==4 ?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),
                        InkWell(
                          onTap: () {
                            _saveLocation('Iraq');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ireland',style: TextStyle(color:index==5?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),

                        InkWell(
                          onTap: () {
                            _saveLocation('Ireland');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Italy',style: TextStyle(color: index==6?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),

                        InkWell(
                          onTap: () {
                            _saveLocation('Italy');
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('Japan',style: TextStyle(color:  index==7 ?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),

                        InkWell(
                          onTap: () {
                            _saveLocation('Japan');
                            setState(() {
                              index=7;
                            });
                          },
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors:[ index==7
                                      ?Colors.deepPurpleAccent:Colors.transparent,index==7
                                      ?Colors.cyan:Colors.transparent]),
                              shape: BoxShape.circle,
                              border:index!=7
                                  ? Border.all(
                                color: Colors.grey,
                                width: 3,
                              ):null,
                            ),
                            child: index==7
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

                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: defaultMaterialButton(function: (){
                      change?  navigateTo(context,MyApp()):
                      navigateAndFinish(context,LayoutScreen());
                    }, text: 'Confirm', context: context),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

