import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Functions/authFunctions.dart';
import 'HomePage.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shared Preference")),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  !isLogin
                      ? TextFormField(
                    key: ValueKey('Username'),
                    validator: (value) {
                      if (value.toString().length < 3) {
                        return "Username is too small";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        username = value!;
                      });
                    },
                    decoration:
                    InputDecoration(hintText: "Enter Username"),
                  )
                      : Container(),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (!(value.toString().contains('@'))) {
                        return "Invalid Email";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        email = value!;
                      });
                    },
                    key: ValueKey('Email'),
                    decoration: InputDecoration(hintText: "Enter Email"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return "Password is too small";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                    key: ValueKey('Password'),
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        isLogin? signin(email, password) : signup(email, password);
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: isLogin ? Text("Login") : Text("Signup"),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = !isLogin;
                        });
                      },
                      child: isLogin
                          ? Text("Don't have an Account? SignUp")
                          : Text("Already Signed Up? Login"))
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

