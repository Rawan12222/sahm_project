import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahm_project/myProfile.dart';

class myCart extends StatefulWidget {
  const myCart({super.key});

  @override
  State<myCart> createState() => _myCartState();
}

class _myCartState extends State<myCart> {

  int counter=0;
  

  void _incremeant(){
    setState(() {
      counter++;
    });
  }

  void _decrease(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //return const Placeholder();
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

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(14, 18,0,0),
              child: Text("My Cart", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color.fromRGBO(34, 34, 34, 1))),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 17, 0,0),
              child: cardContainr(
                    'assets/images/brownSkirt.png', 
                    "Pullover", 
                    "Color: ", 
                    "Black", 
                    "Size: ", 
                    "L", 
                    '$counter', 
                    ElevatedButton(
                      onPressed: _incremeant,
                      child: const Icon(Icons.add),
                      ), 
                    ElevatedButton(
                      onPressed: _decrease,
                      child: const Icon(Icons.remove),
                      ), 
                    "51\$"
                    ),
            ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 0 ,0),
                    child: cardContainr(
                      'assets/images/whiteTshirt.png', 
                      "T-Shirt", 
                      "Color", 
                      "Gray", 
                      "Size", 
                      "L", 
                      '$counter', 
                      ElevatedButton(
                      onPressed: _incremeant,
                      child: const Icon(Icons.add),
                      ), 
                    ElevatedButton(
                      onPressed: _decrease,
                      child: const Icon(Icons.remove),
                      ), 
                    "30\$"
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24,0 ,0),
                    child: cardContainr(
                      'assets/images/adidasShirt.png', 
                      "Sport Dress", 
                      "Color", 
                      "Black", 
                      "Size", 
                      "M", 
                      '$counter', 
                      ElevatedButton(
                      onPressed: _incremeant,
                      child: const Icon(Icons.add),
                      ), 
                    ElevatedButton(
                      onPressed: _decrease,
                      child: const Icon(Icons.remove),
                      ), 
                    "43\$"
                    ),
                  ),



                  Padding(
              padding: const EdgeInsets.fromLTRB(16, 23 ,0,0),
              child: Container(
                height: 36,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
                      labelText: "Enter your promo code",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(Icons.arrow_circle_right_outlined,size: 36,),
                      ),
                      
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),

              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top:28),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:16),
                    child: Text("Total amount:", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155,1))),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 223),
                    child: Text("124\$", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900 , color: Color.fromRGBO(34, 34, 34,1))),),
                  ),

                  

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(16,24,0,0),
              child: Container(
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){}, 
                child: Text("CHECK OUT", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
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
            //activeIcon: m
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop'
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
            activeIcon: myCart(),
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            activeIcon: profile()
            ),

        ]
        
        ),



    );
  }


  Container cardContainr(String image, String heading ,String hintColor, String color,String sizeHint, String size, String quantity, ElevatedButton buttonAdd, ElevatedButton buttonminus ,String price ){
    return Container(
      width: 343,
      height: 104,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(
          blurRadius: 25,
          spreadRadius: 0,
          offset: Offset(0, 1),
          color: Color.fromRGBO(0, 0, 0, 0.08)
        )]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 11,0,0),
                child: Text(heading, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color.fromRGBO(34, 34, 34,1))),),
              ),
/////////////////////////////////////////////////////////////////////////

              Row(
                
                children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 1,0,0),
                  child: Text(hintColor,style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,1,0,0),
                  child: Text(color, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34,1))),),
                ),

////////////////////////////////////////////////////////////////

                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 1,0,0),
                  child: Text(sizeHint, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,1,0,0),
                  child: Text(size,  style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34,1)))),
                )
              ],),

////////////////////////////////////////////////////////////

              Row(
                  children: [

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12,12,0,0),
                        child: Row(
                          children: [
                             Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                                    ),
                                  child: SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Icon(
                                    Icons.remove,
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                    size: 19,
                                      ),
                                     ),
                                    
                            ),
                      
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 18.5),
                               child: Text("$quantity"),
                             ),
                            
                      
                             Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                                    ),
                                  child: SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Icon(
                                    Icons.add,
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                    size: 19,
                                      ),
                                     ),
                                    ),
                            
                          ],
                        ),
                      ),
                    ),

                     Padding(
                       padding: const EdgeInsets.fromLTRB(65, 12,0,0),
                       child: Text("$price", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(34, 34, 34, 1))),),
                     ),
                    
                    


                  ],
                ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Icon(Icons.more_vert, color: Color.fromRGBO(155, 155, 155, 1)),
          )


        ],
      ),



    );
  }




}