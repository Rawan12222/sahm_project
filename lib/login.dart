import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();

    return Scaffold(

      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 106, 0,0),
            child: Text("Login", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),),
          ),

          Padding(
              padding: const EdgeInsets.fromLTRB(16, 90 ,0,0),
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
                      //border: BorderRadius.circular(4),
                      labelText: "Email",
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      suffixIcon: Icon(Icons.check, color: Color.fromRGBO(42, 169, 82, 1),),
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8 ,0,0),
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
                      //border: BorderRadius.circular(4),
                      labelText: "Password",
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      suffixIcon: Icon(Icons.close, color: Color.fromRGBO(240, 31, 14, 1),),
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

              ),
            ),

            InkWell(
            child:  Padding(
              padding: const EdgeInsets.fromLTRB(119, 16,0,0),
              child: Text("Forgot your password?", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(252, 15, 15, 1))),),
            )
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(108,5,0,0),
                child: Text("don't have an account?", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(16, 16, 16, 1))),),
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.fromLTRB(16,11,0,0),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){}, 
                child: Text("LOGIN", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
              ),
            ),


            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(105,166,0,0),
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
      ) ,
      ) 

    );



  }
}