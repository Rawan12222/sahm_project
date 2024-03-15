import 'package:flutter/material.dart';
import 'package:sahm_project/CreditCards.dart';
import 'package:sahm_project/address.dart';
import 'package:sahm_project/checkout.dart';
import 'package:sahm_project/forgot.dart';
import 'package:sahm_project/login.dart';
import 'package:sahm_project/myCart.dart';
import 'package:sahm_project/myCrt2.dart';
import 'package:sahm_project/myProfile.dart';
import 'package:sahm_project/signUp.dart';
import 'package:sahm_project/success_screen.dart';
import 'package:sahm_project/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: 
      myCart2()
      //checkoutPage()
      //CreditCardsPage()
      //myCart()
      //forgtoPage()
      //verificationPage()
      //signUpPage()
      //loginPage()
      //profile()
      //address()
      //successScreen()
      
      //const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      //appBar: AppBar(
        
        //title: Text(widget.title),
      //),
      body: Center(
        
        
      ),
      
    );
  }
}
