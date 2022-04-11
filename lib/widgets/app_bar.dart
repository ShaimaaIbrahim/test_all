import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 25.0,
            offset: Offset(0, 0)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Expanded(
           flex: 1,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               widthSpace(10),
               Icon(
                 Icons.filter_list_rounded,
                 color: Colors.green,
                 size: 30,
               ),
               widthSpace(4),
               CircleAvatar(
                 backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
                 radius: 15,
               ),
             ],
           ),
         ),
          Expanded(
             flex: 2,
              child: bold16Text('    My Account', color: Colors.lightGreen)),

         // bold16Text('')
        ],
      ),
    );
  }
}
