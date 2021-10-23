// ignore_for_file: file_names

import 'package:ewalletapp/screens/RegistrationScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/HomeWithSidebar.dart';
import 'screens/LoginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/homePage': (context) => RegistrationScreen(),
        '/logInScreen': (context) => LogInScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/sideImg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '06:22 AM',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/cloud.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '34˚ C',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Oct 21, 2021 | Thursday',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'asset/images/logo.png',
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Text(
                          'eWallet',
                          style: TextStyle(
                              fontSize: 50,
                              fontFamily: 'ubuntu',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Open An Account For \nDigital E-Wallet Solutions \nInstant Payouts.\n\nJoin For Free",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xffffac30),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: logInScreen,
                  child: Center(
                    child: Text(
                      'Or Sign In',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, "/homePage");
  }

  void logInScreen() {
    Navigator.pushNamed(context, "/logInScreen");
  }
}
