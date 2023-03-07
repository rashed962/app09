import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:http/http.dart';
import 'package:simple_animations/simple_animations.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:http/http.dart';
import 'package:simple_animations/simple_animations.dart';

//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//   @override
//   State<Login> createState() => _LoginState();
// }
// class _LoginState extends State<Login> {
//   bool _isObscure = true;
//   bool _isLoading = false;
//   GlobalKey<FormState> fromKey = GlobalKey<FormState>();
//
//   List post = [];
//   Future<void> getpost() async {
//     var url = "https://jsonplaceholder.typicode.com/posts";
//     var response = await get(Uri.parse(url));
//     var responsebody = jsonDecode(response.body);
//     setState(() {
//       post.addAll(responsebody);
//     });
//     print(post);
//   }



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            // post== null || post.isEmpty  ?
            // Center(child: CircularProgressIndicator())
            //
            //
            //     : ListView.builder(itemCount: post.length,
            //
            //     itemBuilder: (context,i){
            //
            //       return Text("${post[i]['title']}");
            //
            //
            //     }),




            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.asset(
                  'images/cri.png',
                  height:double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login💌",

                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {


                            print("hi");
                          },


                            // Put login logic here

                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Login💛",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
