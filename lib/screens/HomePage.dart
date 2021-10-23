// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'asset/images/logo.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "eWallet",
                      style: TextStyle(
                        fontFamily: 'ubuntu',
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Account Overview",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xfff1f3f6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "\$20,600",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Current Balance",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Send Money",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir',
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'asset/images/scanqr.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  avatarWidget("avatar1", "Mubarak"),
                  avatarWidget("avatar2", "Abdikarim"),
                  avatarWidget("avatar3", "Hamda"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir',
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.dialpad),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                children: [
                  serviceWidget("sendMoney", "Send\nMoney"),
                  serviceWidget("receiveMoney", "Recieve\nMoney"),
                  serviceWidget("phone", "Mobile\nRecharge"),
                  serviceWidget("electricity", "Electricity\nBill"),
                  serviceWidget("tag", "Cashback\nOffer"),
                  serviceWidget("movie", "Movie\nTicket"),
                  serviceWidget("flight", "Flight\nTicket"),
                  serviceWidget("more", "More\n"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column serviceWidget(String img, String name) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xfff1f3f6),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/$img.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'avenir',
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Container avatarWidget(String img, String name) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 150,
      width: 120,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xfff1f3f6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('asset/images/$img.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'avenir',
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
