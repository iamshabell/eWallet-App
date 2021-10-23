// ignore_for_file: file_names

import 'package:ewalletapp/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController secondNameController =
      // ignore: unnecessary_new
      new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPassController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstName = TextFormField(
      autofocus: false,
      controller: firstNameController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff1f3f6),
        prefixIcon: Icon(
          Icons.person,
          color: Color(0xffffac30),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffac30), width: 2.0),
        ),
      ),
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );
    final secondName = TextFormField(
      autofocus: false,
      controller: secondNameController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff1f3f6),
        prefixIcon: Icon(
          Icons.person,
          color: Color(0xffffac30),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Surname",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffac30), width: 2.0),
        ),
      ),
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (value) {
        secondNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );
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
      //validator: () {},
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
      //validator: () {},
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
    final confirmPassword = TextFormField(
      autofocus: false,
      controller: confirmPassController,
      obscureText: true,
      //validator: () {},
      onSaved: (value) {
        confirmPassController.text = value!;
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
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffac30), width: 2.0),
        ),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xffffac30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff1f3f6),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xffffac30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color(0xfff1f3f6),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
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
                    firstName,
                    SizedBox(
                      height: 25,
                    ),
                    secondName,
                    SizedBox(
                      height: 25,
                    ),
                    emailField,
                    SizedBox(
                      height: 25,
                    ),
                    passwordFields,
                    SizedBox(
                      height: 25,
                    ),
                    confirmPassword,
                    SizedBox(
                      height: 35,
                    ),
                    signUpButton,
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogInScreen()));
                          },
                          child: const Text(
                            "Sign In",
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
}
