import 'package:flutter/material.dart';
import '../colors.dart' as color;
import '../navigation.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List data = [
    {
      'Name': '',
      'LastName': '',
      'UserName': '',
      'Password': ''
    }
  ];
  bool isPasswordVisible = false;
  var txtName = TextEditingController();
  var txtLastName = TextEditingController();
  var txtUserName = TextEditingController();
  var txtPass = TextEditingController();
  int i = 0;
  void _handleSubmit(){
    var name = txtName.text;
    var lastname = txtLastName.text;
    var username = txtUserName.text;
    var pass = txtPass.text;

    data[i]['Name'] = name;
    data[i]['LastName'] = lastname;
    data[i]['UserName'] = username;
    data[i]['Password'] = pass;
    print(data);
    setState(() {
      i = i+1;
      print(i);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    txtName.addListener(()=> setState(() {}));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.symmetric(horizontal: 30),
        color: Color(0xFFFF00FF),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .50,
            decoration: BoxDecoration(
                // color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.text,
                  controller: txtName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d1559),width: 3),
                          borderRadius: BorderRadius.circular(29)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(29)
                      ),
                    suffixIcon: txtName.text.isEmpty? Container(width: 0,):
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: ()=>txtName.clear(),
                    ),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                      fillColor: Colors.white,
                      filled: true

                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.text,
                  controller: txtLastName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d1559),width: 3),
                          borderRadius: BorderRadius.circular(29)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(29)
                      ),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                      fillColor: Colors.white,
                      filled: true

                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.text,
                  controller: txtUserName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFF3d1559),width: 3),
                          borderRadius: BorderRadius.circular(29)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(29)
                      ),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'UserName',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                      fillColor: Colors.white,
                      filled: true

                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.text,
                  controller: txtPass,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3d1559),width: 3),
                          borderRadius: BorderRadius.circular(29)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(29)
                      ),
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () =>setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      }),
                    ),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                      fillColor: Colors.white,
                      filled: true

                  ),
                  obscureText: isPasswordVisible,
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text('Already have an Account',style: TextStyle(
                            color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: ()=>Navigator.pushNamed(context, login),
                            child: Text('Signin',style: TextStyle(
                                color: Color(0xFF3d1559),fontSize: 20,
                                fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
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
                          onPressed: _handleSubmit,
                          child: Text('Submit',style: TextStyle(fontSize: 20),))

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
