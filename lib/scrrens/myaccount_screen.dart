import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({Key? key}) : super(key: key);

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  List<String> textdata = [
    "A Mother Like Mine ",
    "Orphan Train Trials",
    "Daughters of War",
    "A Family Affair",
  ];
  List<String> datedata = [
    "17 Feb 2019 ",
    "24 Dec 2018",
    "Daughters of War",
    "A Family Affair",
  ];
  List<String> dollardata = [
    "/-＄5.50 ",
    "/-＄6.50",
    "/+＄80.00",
    "/-＄9.50",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFF2EBBC3),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text("My Account"),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 2.7,
                  width: double.infinity,
                  color: Colors.white,
                ),
                Container(
                  height: height / 3.5,
                  width: double.infinity,
                  color: const Color(0XFF2EBBC3),
                  child: Column(
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(color: Colors.white, fontSize: text * 13),
                      ),
                      Text(
                        "65.00＄",
                        style: TextStyle(color: Colors.white, fontSize: text * 40),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        height: height / 20,
                        width: width / 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Deposit",
                            style: TextStyle(
                              color: Color(0xFF2EBBC3),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height / 4,
                    left: width / 10,
                    right: width / 10,
                  ),
                  child: Container(
                    height: height / 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/bank card.png"),
                            SizedBox(width: width / 24),
                            const Text(
                              "My card",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/coupon.png"),
                            SizedBox(width: width / 24),
                            const Text(
                              "Coupon",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: width / 14,
                ),
                const Text(
                  "Recent Transactions",
                  style: TextStyle(
                    color: Color(0XFFC7C7CC),
                  ),
                ),
                SizedBox(
                  width: width / 2.6,
                ),
                const Text(
                  "view all",
                  style: TextStyle(
                    color: Color(0XFFC7C7CC),
                  ),
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0XFFC7C7CC),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textdata[index],
                      ),
                      Text(
                        datedata[index],
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        dollardata[index],
                      ),
                      Icon(Icons.navigate_next_outlined),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: textdata.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
