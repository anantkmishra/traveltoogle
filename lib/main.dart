import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//import 'package:flutter/services.dart';
import 'pages/pageone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _uname, _pwd, _msg = '';

  @override
  Widget build(BuildContext context) {
    AssetImage Loginimg = AssetImage('images/imgLogin.jpg');
    Image imgLogin = Image(image: Loginimg, width: 160,);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            margin: EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100,),
                Container(
                  child: imgLogin,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _msg,
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color.fromARGB(60, 150, 60, 60),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: InputBorder.none,
                    ),
                    onChanged: (s) => _uname = s,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Color.fromARGB(60, 150, 60, 60),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: InputBorder.none,
                    ),
                    onChanged: (s) => _pwd = s,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey[700], fontSize: 10),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                      color: Colors.red[900],
                      onPressed: () {
                        if (_uname != null &&
                            _uname != '' &&
                            _pwd != null &&
                            _pwd != '') if (_uname == "test" && _pwd == "pass")
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        else
                          setState(() {
                            _msg = "Incorrect Username and/or Password !!!";
                          });
                        else
                          setState(() {
                            _msg = "Please Enter All Details !!!";
                          });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
