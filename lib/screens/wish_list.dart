import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  return _wishListItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_wishListItem(){
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
              heightSpace(5),
              bold12Text('Electronic', color: Colors.grey),
              heightSpace(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextWithIcon('Name', Icon(Icons.person, color: Colors.greenAccent,)),
                  widthSpace(5),
                  _buildTextWithIcon('Location', Icon(Icons.location_on, color: Colors.greenAccent,))
                ],
              ),
               heightSpace(5),
              _buildTextWithIcon('published at 22/1/2022', Icon(Icons.check, color: Colors.greenAccent,))
            ],
          ),
          Spacer(),
          Column(
            children: [
              Container(
                decoration:  BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.favorite, color: Colors.white,),
                  ),
                ),
              ),
              heightSpace(5),
              Container(
                decoration:  BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.refresh, color: Colors.white,),
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
_buildTextWithIcon(text, icon){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      icon,
      // widthSpace(5),
      bold12Text(text),

    ],
  );
}