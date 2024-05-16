// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:styley/Screens/LoginScreens/AppLocalizations.dart';
import 'package:styley/Screens/LoginScreens/Location.dart';
import 'package:styley/Screens/LoginScreens/LoginScreen.dart';
import 'package:styley/main.dart';

import '../../components.dart';

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  late SharedPreferences _prefs;
  String _selectedLanguage = '';
   int index=0;
  bool change=false;
  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _selectedLanguage = _prefs.getString('selectedLanguage') ?? 'en';

      switch(_selectedLanguage){
        case "en":setState(() {index=0;});
        case "es":setState(() {index=1;});
        case "fr":setState(() {index=2;});
        case "de":setState(() {index=3;});
        case "zh":setState(() {index=4;});
        case "ja":setState(() {index=5;});
        case "ko":setState(() {index=6;});
        case "ar":setState(() {index=7;});
        default:setState(() {index=0;});
      }

  }
  void _saveLanguage(String language) async {

    await _prefs.setString('selectedLanguage', language);
    setState(() {
      change=true;
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    var  screenSize= MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: CircleAvatar(backgroundImage:const AssetImage('assets/images/languagegirl.jpg') ,radius:screenSize.width*0.1 ,)),
             const SizedBox(height: 20,),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(AppLocalizations.of(context)!.translate('hi'),style: TextStyle(color: Colors.black,fontSize: screenSize.width*0.1,fontWeight: FontWeight.bold),),
                ),
               Text(AppLocalizations.of(context)!.translate('welcomee'),style: TextStyle(color: Colors.grey,fontSize: screenSize.width*0.045,fontWeight: FontWeight.bold),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(

                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('en');
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
                          const SizedBox(width: 10),
                          Text('English ',style: TextStyle(color:index==0 ?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('es');
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
                          const SizedBox(width: 10),
                          Text('Spanish',style: TextStyle(color:index==1?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(

                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('fr');
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
                          const SizedBox(width: 10),
                          Text('French ',style: TextStyle(color: index==2?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('de');
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
                          const SizedBox(width: 10),
                          Text('German',style: TextStyle(color:  index==3 ?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(

                          children: [
                            InkWell(
                              onTap: () {
                                _saveLanguage('zh');
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
                            const SizedBox(width: 10),
                            Text('Chinese ',style: TextStyle(color:index==4 ?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),



                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                _saveLanguage('ja');
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
                            const SizedBox(width: 10),
                            Text('Japanese',style: TextStyle(color:index==5?Colors.black: Colors.grey,fontSize: screenSize.width*0.04,),),



                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(

                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('ko');
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
                          const SizedBox(width: 10),
                          Text('Korean ',style: TextStyle(color: index==6?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _saveLanguage('ar');
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
                          const SizedBox(width: 10),
                          Text('Arabic',style: TextStyle(color:  index==7 ?Colors.black:Colors.grey,fontSize: screenSize.width*0.04,),),



                        ],
                      ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: defaultMaterialButton(function: (){
                change?  navigateTo(context,MyApp()):
                navigateAndFinish(context,LocationScreen());
                  }, text: 'Select', context: context),
            ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

