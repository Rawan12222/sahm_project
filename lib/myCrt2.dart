import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myCart2 extends StatefulWidget {
  const myCart2({super.key});

  @override
  State<myCart2> createState() => _myCart2State();
}

class _myCart2State extends State<myCart2> {
  
  int counter=0;
  bool selected =true;

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

      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
              padding: const EdgeInsets.fromLTRB(14, 18,0,0),
              child: Text("My Bag", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color.fromRGBO(34, 34, 34, 1))),),
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



              InkWell(
                child: Padding(
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
                  readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Enter your promo code",
                      suffixIcon: selected== true? Icon(Icons.arrow_circle_right_outlined,size: 36,): Icon(Icons.close,size: 36,) ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                      
                    ),
                  ),

              ),
            ),
            onTap: () => showBottomSheet(
              context: context, 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
              builder: (context) => Container(
                height: 464,
                child: Column(children: [
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
                  readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Enter your promo code",
                      suffixIcon: selected== true? Icon(Icons.arrow_circle_right_outlined,size: 36,): Icon(Icons.close,size: 36,) ,
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                      
                    ),
                  ),
              ),
            ),
                  //Text("Your Promo Codes")
                  _promoCard(
                    image: 'assets/images/redOffer.png', 
                    offer: "Personal offer", 
                    code: "mypromocode2020", 
                    dayOffer: "6 days remaining"
                  ),
                  _promoCard(
                    image: 'assets/images/womenOffer.png', 
                    offer: "Summer Sale", 
                    code: "summer2020", 
                    dayOffer: "23 days remaining"
                  ),
                  _promoCard(
                    image: 'assets/images/blackOffer.png', 
                    offer: "Personal offer", 
                    code: "mypromocode2020", 
                    dayOffer: "6 days remaining"
                  ),
                ],),
              )),
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
                    child: Text("112\$", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900 , color: Color.fromRGBO(34, 34, 34,1))),),
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

          InkWell(
           
                child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Icon(Icons.more_vert, color: Color.fromRGBO(155, 155, 155, 1), ),
               ),
               
             

            onTap: () => showDialog(
              
              context: context, 
              builder: (context) => Dialog(
                child: Container(
                  height: 96,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Column(children: [
                  InkWell(
                    child:  SizedBox(
                      height: 48,
                      width: 170,
                      child: Center(child: Text("Add to favorites")),
                    ),
                    onTap: () => {
                      
                    },
                  ),
                  InkWell(
                    child: SizedBox(
                      height: 48,
                      width: 170,
                      child:Center(child:Text("Delete from the list")),
                      ),
                    onTap: () => {Navigator.of(context).pop()},
                  )
                ],)
                  ],),
                )
                
                
              )) ,
          )


        ],
      ),



    );
  }

  Card _promoCard({required String image, required String offer, required String code, required String dayOffer}){
    return Card(
      child: Container(
        child: Row(children: [
          Image.asset(image),
          Column(children: [
            _headText(healine:offer ),
            _subText(subtext: code)
          ],),

          Column(children: [
            _remainingText(dayss: dayOffer),
            Container(
                height: 36,
                width: 93,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(211, 38, 38, 0.25),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                  color: Color.fromRGBO(33, 150, 83, 1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                onPressed: (){}, 
                child: Text("Apply", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
              ),
          ],)
        ],),
      ),

    );
  }

Text _subText({required String subtext}){
    return Text(subtext, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400,color: Color.fromRGBO(34, 34, 34, 1))),);   
  }
Text _headText({required String healine}){
    return Text(healine, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color.fromRGBO(34, 34, 34, 1))),);    
  }

Text _remainingText({required String dayss}){
  return Text(dayss , style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400,color: Color.fromRGBO(155, 155, 155, 1))),);
 }


}
    