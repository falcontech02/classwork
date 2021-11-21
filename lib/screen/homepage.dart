import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart' as color;
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
     return Scaffold(
       appBar: AppBar(
         backgroundColor: color.AppColor.otherColor,
         leading: Container(
           padding: EdgeInsets.all(5),
           child: CircleAvatar(
             backgroundImage: AssetImage('assets/images/positive.jpg'),
           ),
         ),
         title: Text('MyApp'),
       ),
       body: SafeArea(
         child: Container(
           padding: EdgeInsets.only(top: 10,left: 20,right: 20),
           width: double.infinity,
           height: MediaQuery.of(context).size.height,
           color: color.AppColor.homePageBackground,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Expanded(child:
               ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                         width: size.width * .90,
                         height: size.height * .30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           image: DecorationImage(
                             fit: BoxFit.fill,
                             image: AssetImage('assets/images/friend.jpg')
                           )
                           // color: Colors.white,
                         )
                     ),
                     SizedBox(width: 10,),
                     Container(
                         width: size.width * .90,
                         height: size.height * .30,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 fit: BoxFit.fill,
                                 image: AssetImage('assets/images/romantic.jpg')
                             ),
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white,
                         )
                     ),
                     SizedBox(width: 10,),
                     Container(
                         width: size.width * .90,
                         height: size.height * .30,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 fit: BoxFit.fill,
                                 image: AssetImage('assets/images/pix.jpg')
                             ),
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white,
                         )
                     ),
                     SizedBox(width: 10,),
                     Container(
                         width: size.width * .90,
                         height: size.height * .30,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 fit: BoxFit.fill,
                                 image: AssetImage('assets/images/positive.jpg')
                             ),
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white,
                         )
                     ),
                   ],
                 )

                 ],
               )),


             ],
           ),
         ),
       ),
     );
   }
 }
