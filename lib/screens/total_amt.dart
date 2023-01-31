import 'package:flutter/material.dart';

class TotalAmt extends StatefulWidget {
  const TotalAmt({Key? key}) : super(key: key);

  @override
  State<TotalAmt> createState() => _TotalAmtState();
}

class _TotalAmtState extends State<TotalAmt> {
  var arrIcons = [
    {"title": "Food", "Amount": "₹2500"},
    {"title": "Entertainment", "Amount": "₹2500"},
    {"title": "Other", "Amount": "₹1500"},
    {"title": "Food", "Amount": "₹2500"},
    {"title": "Entertainment", "Amount": "₹2500"},
    {"title": "Other", "Amount": "₹1500"},
    {"title": "Food", "Amount": "₹2500"},
    {"title": "Entertainment", "Amount": "₹2500"},
    {"title": "Other", "Amount": "₹1500"},
    {"title": "Food", "Amount": "₹2500"},
    {"title": "Entertainment", "Amount": "₹2500"},
    {"title": "Other", "Amount": "₹1500"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Welcome",
            style: TextStyle(fontSize: 18, color: Colors.black)),
        actions: [
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.notification_add,
                color: Colors.orangeAccent,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(children: [
            Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent,
                          Colors.pinkAccent,
                          Colors.orangeAccent
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
              ),
            ),
            Positioned(
                left: 95,
                top: 30,
                child: Text(
                  "Total Balance",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Positioned(
                left: 110,
                top: 70,
                child: Text(
                  "₹48000.00",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Positioned(
              top: 130,
              left: 30,
              child: Row(children: [
                Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.green,
                  size: 30,
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      "Income",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12),
                      child: Text(
                        "₹2500",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Positioned(
              top: 130,
              left: 170,
              child: Row(children: [
                Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      "Income",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12),
                      child: Text(
                        "₹2500",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ]),
            )
          ]),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 35),
              Text(
                "Transactions",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    fontSize: 20),
              ),
              SizedBox(width: 165),
              Text(
                "View All",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              )
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.local_pizza,
                    ),
                    title: Text(arrIcons[index]["title"]!),
                    trailing: Icon(Icons.more_vert),
                  );
                },
                itemCount: arrIcons.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
