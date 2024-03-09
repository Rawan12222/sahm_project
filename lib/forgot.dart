import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahm_project/main.dart';

import 'login.dart';


class forgtoPage extends StatefulWidget {
  const forgtoPage({super.key});

  @override
  State<forgtoPage> createState() => _forgtoPageState();
}

class _forgtoPageState extends State<forgtoPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        elevation: 0,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: const Icon(Icons.chevron_left,color: Color.fromRGBO(34, 34, 34, 1),size: 24,),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
            builder:(context)=> loginPage()));
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14,18,0,0),
            child: Text("Forgot password", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color.fromRGBO(34, 34, 34, 1))),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(82, 58, 0,0),
            child: Text("Please, enter your phone number ", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),
          ),

          Padding(
              padding: const EdgeInsets.fromLTRB(16, 22 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        borderSide: BorderSide(
                        color: Color.fromRGBO(240, 31, 14, 1), width: 1
                         ),
                        ),
                      border: InputBorder.none,
                      labelText: "Phone",
                      prefixText: "+966",
                      prefixStyle: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      suffixIcon: Icon(Icons.close,color: Color.fromRGBO(240, 31, 14, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16,37,0,0),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){}, 
                child: Text("SEND", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
              ),
            ),

            Padding(
            padding: const EdgeInsets.fromLTRB(121, 111, 0,0),
            child: Text("Please, enter OPT code", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),
          ),

          Padding(
              padding: const EdgeInsets.fromLTRB(14, 11 ,0,0),
              child: Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "OTP",
                      suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      hintStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(14,37,0,0),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> MyApp()));
                }, 
                child: Text("LOGIN", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
              ),
            ),

        ],
      ) ,
      )


    );
  }
}