import 'package:ewalletapp/screens/HomePage.dart';
import 'package:ewalletapp/screens/HomeWithSidebar.dart';
import 'package:ewalletapp/screens/RegistrationScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  //kii ii maamulayey editing-ka

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // qeybta email-ka
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff1f3f6),
        prefixIcon: Icon(
          Icons.mail,
          color: Color(0xffffac30),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffac30), width: 2.0),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter A Valid Email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );
    // qeybta password-ka
    final passwordFields = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter A Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff1f3f6),
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Color(0xffffac30),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffac30), width: 2.0),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xffffac30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomeWithSidebar()));
        },
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xfff1f3f6),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: Image.asset(
                        "asset/images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    emailField,
                    SizedBox(
                      height: 25,
                    ),
                    passwordFields,
                    SizedBox(
                      height: 35,
                    ),
                    loginButton,
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegistrationScreen()));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (!_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then(
            (uid) => {
              Fluttertoast.showToast(msg: "Login Successful"),
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeWithSidebar()))
            },
          );
    }
  }
}
