import 'package:flutter/material.dart';

import 'home.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 40, left: 40, top: 20, bottom: 10),
        child: Column(
          children:  [
            _buildDrawerListItem('Account'),
             heightSpace(10),
            _buildDrawerListItem('Advertisment'),
            heightSpace(10),
            _buildDrawerListItem('Follow'),
            heightSpace(10),
            _buildDrawerListItem('Black List'),
            heightSpace(10),
            _buildDrawerListItem('Transform'),
            heightSpace(10),
            _buildDrawerListItem('Feature add'),
            heightSpace(10),
            _buildDrawerListItem('Membership'),
            heightSpace(10),
            _buildDrawerListItem('Policy'),
            heightSpace(10),
            _buildDrawerListItem('Blocked Products'),
            heightSpace(10),
            _buildDrawerListItem('Rating System'),
            heightSpace(10),
            _buildDrawerListItem('Verifying'),
            heightSpace(10),
            _buildDrawerListItem('About Us'),
            heightSpace(10),
            _buildDrawerListItem('Log out'),
            heightSpace(10),
          ],
        ),
      ),
    );
  }
}
_buildDrawerListItem(text){
  return Container(
    //width: 130,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20),)
    ),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.perm_identity, color: Colors.greenAccent,),
            widthSpace(5),
            Expanded(child: bold12WithLineText(text, color: Colors.greenAccent))
          ],
        ),
      ),
    ),
  );
}