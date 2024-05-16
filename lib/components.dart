

import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

Widget defaultTextFormField({
  FocusNode? focusNode,
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? Function(String?) validate,
  required String label,
  Color? fillColor,
  String? hint,

  onTap,
  onChanged,
  Function(String)? onFieldSubmitted,
  bool isPassword = false,
  bool isClickable = true,
  InputDecoration? decoration,
  IconData? suffix,
  IconData? prefix,
  Function? suffixPressed,
}) =>
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(

        textAlign: TextAlign.right,
textDirection: TextDirection.rtl,
        maxLines: 1,
        minLines: 1,
        controller: controller,
        validator: validate,
        enabled: isClickable,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        obscureText: isPassword,
        keyboardType: keyboardType,
        autofocus: false,
        decoration: InputDecoration(
alignLabelWithHint: true,
hintTextDirection: TextDirection.rtl,

          prefixIcon: Icon(
            prefix,
            color: Colors.grey,
          ),
          suffixIcon: suffix != null ? IconButton(
            onPressed: () {suffixPressed!();},
            icon: Icon(suffix, color: Colors.grey,),
          ):null,
          filled: true,
          isCollapsed: false,
          fillColor:fillColor?? Colors.white,
          hoverColor: Colors.red.withOpacity(0.2),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color:Colors.white,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          focusColor: const Color.fromRGBO(199, 0, 58,1),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
Widget defaultTextFormCardField({
  FocusNode? focusNode,
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? Function(String?) validate,
  required String label,
  Color? fillColor,
  String? hint,

  onTap,
  onChanged,
  Function(String)? onFieldSubmitted,
  bool isPassword = false,
  bool isClickable = true,
  InputDecoration? decoration,
  IconData? suffix,
  IconData? prefix,
  Function? suffixPressed,
}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(

        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        maxLines: 1,
        minLines: 1,
        controller: controller,
        validator: validate,
        enabled: isClickable,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        obscureText: isPassword,
        keyboardType: keyboardType,
        autofocus: false,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection: TextDirection.rtl,

          prefixIcon: Icon(
            prefix,
            color: Colors.grey,
          ),
          suffixIcon: suffix != null ? IconButton(
            onPressed: () {suffixPressed!();},
            icon: Icon(suffix, color: Colors.grey,),
          ):null,
          filled: true,
          isCollapsed: false,
          fillColor:fillColor?? Colors.white,
          hoverColor: Colors.red.withOpacity(0.2),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color:Colors.white,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),

            ),
            borderSide: BorderSide(
              color:Colors.white,
            ),

          ),
          labelText: label,
          labelStyle:   TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          focusColor: const Color.fromRGBO(199, 0, 58,1),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color:Colors.white,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color:Colors.white,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
Widget defaultReadOnlyTextFormField({
  FocusNode? focusNode,
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? Function(String?) validate,
  required String label,

  String? hint,

  onTap,
  onChanged,
  Function(String)? onFieldSubmitted,
  bool isPassword = false,
  bool isClickable = true,
  InputDecoration? decoration,
  IconData? suffix,
  IconData? prefix,
  Function? suffixPressed,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        readOnly: true,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        maxLines: 1,
        minLines: 1,
        controller: controller,
        validator: validate,
        enabled: isClickable,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        obscureText: isPassword,
        keyboardType: keyboardType,
        autofocus: false,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection: TextDirection.rtl,

          prefixIcon: Icon(
            prefix,
            color: Colors.grey,
          ),
          suffixIcon: suffix != null ? IconButton(
            onPressed: () {suffixPressed!();},
            icon: Icon(suffix, color: Colors.grey,),
          ):null,
          filled: true,
          isCollapsed: false,
          fillColor: Colors.transparent,
          hoverColor: Colors.red.withOpacity(0.2),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color:Color.fromRGBO(199, 0, 58,1),
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(199, 0, 58,1),
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          focusColor: const Color.fromRGBO(199, 0, 58,1),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );

Widget defaultMaterialButton({
  required Function function,
  required String text,
  required var context,
  Color color=Colors.cyan,


  double radius = 5.0,
  bool isUpperCase = true,
  Function? onTap,
}) =>
    Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.width*0.12,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurpleAccent,Colors.cyan]),
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
        //  color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          textAlign:TextAlign.start,


          style: const TextStyle(

            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(text,style: const TextStyle(color: Colors.cyan),),
    );

Widget myDivider() => Container(
  width: double.infinity,
  height: 1.0,
  color: Colors.grey[300],
);

void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 10,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0,
    );

// enum  كذا اختيار من حاجة

enum ToastStates { success, error, warning }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Colors.green;
      break;

    case ToastStates.error:
      color = Colors.red;
      break;

    case ToastStates.warning:
      color = Colors.amber;
      break;
  }
  return color;
}

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ), (route) {
  return false;
});

// void logOut(context) {
//   CacheHelper.removeData(
//     key: 'token',
//   ).then((value) {
//     if (value) {
//       navigateAndFinish(context, LoginScreen());
//     }
//   });
// }
Widget dropMenu({required dynamic dropdownvalue,required List<String> items,required void Function(dynamic)? fun ,context})=>Container(
  margin: const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromRGBO(199, 0, 57,1)),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: DropdownButton(
menuMaxHeight: MediaQuery.of(context).size.height/2,
        dropdownColor: const Color.fromRGBO(199, 0, 57,1),
        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
        isExpanded: true,
        // Initial Value
        value: dropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down,color: Colors.white,),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: fun
    ),
  ),
);
List<String> bloodType = [
  'O+',
  'O-',
  'A+',
  'A-',
  'B+',
  'B-',
  'AB+',
  'AB-'
];
List<String> cities= [
  'الإسكندرية',
  'الإسماعيلية',
  'أسوان',
  'أسيوط',
  'الأقصر',
  'البحر الأحمر',
  'البحيرة',
  'بني سويف',
  'بورسعيد',
  'جنوب سيناء',
  'الجيزة',
  'الدقهلية	',
  'دمياط',
  'سوهاج',
  '	السويس',
  'الشرقية',
  'شمال سيناء	',
  '	الغربية',
  'الفيوم',
  'القاهرة',
  'القليوبية',
  'قنا',
  'كفر الشيخ',
  'مطروح',
  'المنوفية',
  'المنيا'
   'الوادي الجديد',

];
List<String> amounts= [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
];
List<String> age= [
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28',
  '29',
  '30',
  '31',
  '32',
  '33',
  '34',
  '35',
  '36',
  '37',
  '38',
  '39',
  '40'
];
List<String>disease = [
'القلب',
'السكر',
'الضغط',
'حساسيه',
'الكبد',
'الفشل الكلوي',
'لا اعاني من اي امراض مزمنه',
'...اخري'
];