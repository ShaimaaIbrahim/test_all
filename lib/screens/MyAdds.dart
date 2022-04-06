import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';


class AddsScreen extends StatefulWidget {
  static String routeName = '/';
  const AddsScreen({Key? key}) : super(key: key);

  @override
  _AddsScreenState createState() => _AddsScreenState();
}

class _AddsScreenState extends State<AddsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: bold16Text('My Adds', color: Colors.greenAccent),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.filter_list_rounded,
              color: Colors.green,
              size: 30,
            ),
            widthSpace(4),
            Expanded(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://img.freepik.com/free-photo/wai'
                    'st-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dresse'
                    'd-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self'
                    '-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac'
                    '=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715',),
                radius: 15,
              ),
            ),


          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
               heightSpace(20),
                SizedBox(
                  //height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics:  BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return _addListItem();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  _addListItem(){
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.green, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 20, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: 'https://img.freepik.com/free-psd/digital-device-mo'
                'ckup_53876-91374.jpg?w=826&t=st=1649253343~exp=1649253943~hmac=5f8fc03bc8073b81f3ad'
                'db2f81053c789147f09fadf1ab70fa367a4c6ba50cda', width: 70, height: 100,),
            widthSpace(5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bold16Text('samsung Head Phone'),
                heightSpace(4),
                bold12Text('Electronic', color: Colors.grey),
                heightSpace(4),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   _buildTextWithIcon('Geddah', ''),
                   widthSpace(5),
                   _buildTextWithIcon('published at 11/2/2021', '')
                 ],
               )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Container(
                  decoration:  BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                 child: Center(
                   child: Padding(
                     padding: EdgeInsets.all(3),
                     child: Icon(Icons.assignment_outlined, color: Colors.white,),
                   ),
                 ),
                ),
                heightSpace(5),
                Container(
                  decoration:  BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Icon(Icons.delete, color: Colors.white,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  _buildTextWithIcon(text, type){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        type=='name'?  Icon(Icons.perm_identity , color: Colors.green, size: 12,): const Icon(Icons.location_on, color: Colors.green, size: 12,),
       // widthSpace(5),
        bold12Text(text),

      ],
    );
  }
}
