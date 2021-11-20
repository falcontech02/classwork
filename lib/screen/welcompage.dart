import 'package:classwork/navigation.dart';
import '../colors.dart' as color;
import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFFF00FF)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',style: TextStyle(
              color: Colors.white,
              fontSize: 60
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pix.jpg')
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),bottomRight: Radius.circular(100))
              ),
              // child: Image.asset('assets/images/pix.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF3d1559),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        fixedSize: Size(
                            100, 50),
                      ),
                      onPressed:(){
                        Navigator.pushReplacementNamed(context, register);
                      },
                      child: Text('Signup',style: TextStyle(fontSize: 20),)),
                  Expanded(child: Container()),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF3d1559),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        fixedSize: Size(
                            100, 50),
                      ),
                      onPressed:(){
                        Navigator.pushNamed(context, login);
                      },
                      child: Text('Signin',style: TextStyle(fontSize: 20),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
