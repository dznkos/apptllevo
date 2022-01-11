import 'package:apptllevo/components/screen/home/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFF4C2EAC),
          scaffoldBackgroundColor: Color(0xFFEEEEEE),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 14.sp,
              color: Color(0xFF707070),
              fontWeight: FontWeight.w400
            ),
            headline2: GoogleFonts.barlow( textStyle: TextStyle(
              fontSize: 14.sp,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w400)
            ),
            headline3: GoogleFonts.poppins( textStyle: TextStyle(
              fontSize: 16.sp,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w400),),
            headline4: GoogleFonts.poppins( textStyle: TextStyle(
            fontSize: 16.sp,
            color: Color(0xFF707070),
            fontWeight: FontWeight.w400)
            ),
            headline5: GoogleFonts.poppins( textStyle: TextStyle(
            fontSize: 18.sp,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w400)
            ),
            headline6: GoogleFonts.barlow( textStyle: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w500)
            ),
            subtitle1: GoogleFonts.barlow( textStyle: TextStyle(
            fontSize: 16.sp,
            color: Color(0xFF888888),
            fontWeight: FontWeight.w500)
            ),
            subtitle2: GoogleFonts.barlow( textStyle: TextStyle(
            fontSize: 28.sp,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w700)
            ),
            bodyText1: GoogleFonts.barlow( textStyle: TextStyle(
            fontSize: 12.sp,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500)
            ),
            bodyText2: GoogleFonts.barlow( textStyle: TextStyle(
            fontSize: 15.sp,
            color: Color(0xFF4C2EAC),
            fontWeight: FontWeight.w500)
            ),
            overline: GoogleFonts.poppins( textStyle: TextStyle(
            fontSize: 24.sp,
            color: Color(0xFF2D2D2D),
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5)
            ),
            button: GoogleFonts.poppins( textStyle: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF3483FA),
            fontWeight: FontWeight.w400)
            ),
            caption: GoogleFonts.poppins( textStyle: TextStyle(
            fontSize: 19.sp,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400)
            ),


          )
        ),
        home: HomeScreen(),
      ),
      designSize: const Size(428, 918),
    );
  }
}
