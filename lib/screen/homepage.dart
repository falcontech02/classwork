import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Container(
           padding: EdgeInsets.all(5),
           child: CircleAvatar(
             backgroundImage: AssetImage('assets/images/positive.jpg'),
           ),
         ),
         title: Text('MyApp'),
       ),
     );
   }
 }
