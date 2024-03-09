import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahm_project/login.dart';
import 'package:sahm_project/verification.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
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
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
            builder:(context)=> loginPage()));
            }, 
          icon: Icon(Icons.chevron_left),color: Colors.black,iconSize: 24,),
      ),

      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.fromLTRB(14, 18, 0,0),
              child: Text("Sign up", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700
              )),),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(17, 16 ,0,0),
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
                      labelText: "Name",
                      suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
                  
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 23 ,0,0),
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
                      labelText: "Email",
                      suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
                  
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16, 23 ,0,0),
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
                      labelText: "Password",
                      suffixIcon: Icon(Icons.close,color: Color.fromRGBO(240, 31, 14, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
                  
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16, 23 ,0,0),
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
              padding: const EdgeInsets.fromLTRB(16,55,0,0),
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
                  builder:(context)=> verificationPage()));
                }, 
                child: Text("SIGN UP", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
              ),
            ),

            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(98,68,0,0),
                child: Text("Or login with social account", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,57),
              child: Row(
                children: [
                  InkWell(
                child: Padding(
                padding: const EdgeInsets.fromLTRB(88, 12,0,0),
                child: Container(
                  height: 64,
                  width: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 8,
                        color: Color.fromRGBO(0,0,0,0.05),
                        offset: Offset(0, 1)
                      )
                    ]
                  ),
                  child: Image.asset('assets/images/google.png', scale: 2,),
                ),
              ),
              ),
            
              InkWell(
                child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 12,0,0),
                child: Container(
                  height: 64,
                  width: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 8,
                        color: Color.fromRGBO(0,0,0,0.05),
                        offset: Offset(0, 1)
                      )
                    ]
                  ),
                  child: Image.asset('assets/images/facebook.png', scale: 2,),
                ),
              ),
              )
                ],
              ),
            )




          ],
        )

      ,),

    );
  }
}