import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:one/models/firebaseuser.dart';
import 'home/home.dart';
import 'package:one/screens/authenticate/handler.dart';

class Wrapper extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    final user =  Provider.of<FirebaseUser?>(context);
    
     if(user == null)
     {
       return Handler();
     }else
     {
       return Home();
     }

  }
} 
