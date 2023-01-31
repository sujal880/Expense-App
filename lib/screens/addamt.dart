import 'package:flutter/material.dart';
class AddAmt extends StatefulWidget {
  const AddAmt({Key? key}) : super(key: key);

  @override
  State<AddAmt> createState() => _AddAmtState();
}

class _AddAmtState extends State<AddAmt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Add Expenses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add Amount",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),),
            SizedBox(height: 30),
            Card(
              elevation: 14,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              ),
              child: Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.black12
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "₹",hintStyle: TextStyle(fontSize: 25,color: Colors.black),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
