import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  double first = 0;
  double second = 0;
  double sum = 0;
/* 
state: 
first =0
second =0
sum=0;
when button is clicked
first=4;
second =5;
third=9;

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        textDirection: TextDirection.ltr,
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    label: Text("First Number"),
                    hintText: "Enter Your First Number",
                  ),
                ),
                TextFormField(
                  controller: textEditingController1,
                  decoration: const InputDecoration(
                    label: Text("Name"),
                    hintText: "Enter Your econd Number",
                  ),
                ),
                InkWell(
                  onTap: () {
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    setState(() {
                      sum=first+second;
                    });
                  },
                  child: Container(
                    height: 36, 
                    margin: EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                      bottom: 8,
                    ),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.blueAccent),
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text("Sum of $first and $second is $sum")
              ],
            ),
          )
        ],
      ),
    );
  }
}
