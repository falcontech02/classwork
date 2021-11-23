
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
                         width: size.width * .60,
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
                         width: size.width * .60,
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
                         width: size.width * .60,
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
                         width: size.width * .60,
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
               SizedBox(height: 20,),
               Align(
                 alignment: Alignment.centerLeft,
                 child: Text('Gallery',style: TextStyle(
                   fontSize: 29,
                   fontWeight: FontWeight.bold
                 ),),
               ),
               SizedBox(height: 20,),
               Expanded(
                 flex: 2,
                 child: GridView.count(
                     crossAxisCount: 2,
                   children: List.generate(30, (index) {
                     return Card(
                       margin: const EdgeInsets.all(7.0),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)
                       ),
                       elevation: 10.0,
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                           image: DecorationImage(image: AssetImage('assets/images/me.jpg'),
                           fit: BoxFit.fill)
                         ),
                       ),
                     );
                   }),
                 ),
               )


             ],
           ),
         ),
       ),
     );
   }
 }
