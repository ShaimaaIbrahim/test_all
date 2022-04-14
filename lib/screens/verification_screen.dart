import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';
import 'package:flutter_testing/widgets/styles_textfiels.dart';

import '../widgets/styled_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: bold16Text('Activation', color: Colors.greenAccent),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5.0,
        iconTheme: IconThemeData(
          color: Colors.greenAccent
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                heightSpace(10),
                Row(
                  children: [
                    Icon(Icons.phone_in_talk_sharp, color: Colors.greenAccent, size: 30,),
                    widthSpace(10),
                    bold16Text('01110393883')
                  ],
                ),
                Row(
                  children: [
                   Container(
                       width: 200,
                       child: bold12Text('Confirm your mobile number by SMS to the number associated', color: Colors.grey[500])),
                    Spacer(),
                    bold12WithLineText('Send SMS')
                  ],
                ),
                heightSpace(20),
                Container(
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Write the code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('content goes here'),
                  ),
                ),
                Divider(height: 2, color: Colors.greenAccent,),
                heightSpace(10),
                Row(
                  children: [
                    Icon(Icons.email_outlined, color: Colors.greenAccent, size: 30,),
                    widthSpace(10),
                    bold16Text('mahmoud@gmail.com')
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: 200,
                        child: bold12Text('Confirm your mobile number by SMS to the number associated', color: Colors.grey[500])),
                    Spacer(),
                    bold12WithLineText('Verify Email')
                  ],
                ),
                heightSpace(20),
                Container(
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Write the code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('content goes here'),
                  ),
                ),
                heightSpace(15),
                Divider(height: 2, color: Colors.greenAccent,),
                heightSpace(20),
                bold16Text('To save this settings please enter password'),
                heightSpace(10),
                StyledTextField(height: 50, width: 250,),
                heightSpace(100),
                Center(child: StyledButton())

              ],
            ),
          ),
        ),
      ),
    );
  }
}
