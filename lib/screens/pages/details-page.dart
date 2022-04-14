import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';

import '../../widgets/styles_textfiels.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLabelText('Location'),
          StyledTextField(height: 40,),
          heightSpace(10),
          _buildLabelText('Address'),
          StyledTextField(height: 40,),
          heightSpace(10),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bold16Text('Mobile Number', color: Colors.grey),
                      StyledTextField(height: 40,),
                    ],
                  )
              ),
              widthSpace(20),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bold16Text('price', color: Colors.grey),
                      StyledTextField(height: 40,),
                    ],
                  )
              ),

            ],
          ),
          heightSpace(10),
          _buildLabelText('Details'),
          StyledTextField(height: 200,),
          heightSpace(10),
        ],
      ),
    );
  }
  _buildLabelText(text){
    return  RichText(
        text: TextSpan(
            text: text,
            style:  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
            children: [
              TextSpan(
                  text: ' *',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  )
              )
            ]
        ));
  }
}

