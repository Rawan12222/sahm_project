import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;

    int orderes=0;
    int address=0;
    int items=0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(249, 249, 249, 1),
        iconTheme: const IconThemeData(color: Color.fromRGBO(249, 249, 249, 1)),
        elevation: 0,
        actions: [
           IconButton(
            icon: const Icon(Icons.search,color: Color.fromRGBO(34, 34, 34, 1),size: 24,),
            onPressed: (){}
           )
        ],
        
      ),

      body: SingleChildScrollView( child:
      
      Column(
        
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 18 , 0 , 0),
            child: Text("My profile", style: GoogleFonts.tajawal(textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 34, )),),
          ),

          Row(
            
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(17,17, 0 ,0 ),
                child: CircleAvatar(
                  radius: 30,
                  child: ClipOval(child: Image.asset("assets/images/profile.png",height: 101, width: 69, fit: BoxFit.cover,))
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,17,0,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Text("Mohamed ", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color.fromRGBO(34, 34, 34, 1))),),
                    
                       Text("mohamed@mail.com", style: GoogleFonts.tajawal(textStyle: TextStyle(color: Color.fromRGBO(155, 155, 155, 1),fontWeight: FontWeight.w500, fontSize: 14)),),
                    
                  ],
                ),
              )

              

            ],
          ),

          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,28,0,0),
                child: Row(
                  children: [ 

                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text("My orders", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("Already have $orderes orders" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(248 , 2,0, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),



          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(16, 18, 0, 0),
                          child: Text("Shipping addresses", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("$address addresses" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(209 , 2,0, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Payment methods", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,6,0,16),
                          child: Text("Visa  **34" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(218 , 2,0, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  children: [ 

                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Promocodes", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("You have special promocodes" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(212 , 2,23.4, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.5 ,
                      color: Color.fromRGBO(155, 155, 155, 1)
                      )
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("My reviews", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16,6,0,16),
                          child: Text("Reviews for $items items" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(258 , 2,23.4, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),



          InkWell(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide.none
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  children: [ 
                    
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                          child: Text("Settings", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,6,0,16),
                          child: Text("Notifications, password" ,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                        )
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(241 , 2,23.4, 0),
                      child: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(155, 155, 155, 1),),
                    )
                  ],
                ),
              ),
            ),
          ),
          

        ],
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        

        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1) ,
        //elevation: 0,
        unselectedItemColor: Color.fromRGBO(155, 155, 155, 1),
        selectedItemColor: Color.fromRGBO(16, 148, 84, 1),
        items: const [
          //type: BottomNavigationBarType.fix,
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop'
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart'
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
            ),

        ]
        
        ),

    );
    
    
  }
}