import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  _FavoriteListState createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    physics:  const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return _followingListItem();
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
  _followingListItem(){
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: 'https://img.freepik.com/free-photo/wai'
            'st-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dresse'
            'd-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self'
            '-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac'
            '=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715',
        imageBuilder: (context, imageProvider) => Container(
          width: 70,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green, width: 1),
            image: DecorationImage(
                image: imageProvider, fit: BoxFit.cover),
          ),
        ),

      ),
      title: bold16Text('Mahmoud Aboelmagd'),
      subtitle: _buildTextWithIcon('Geddah',),
      trailing: Container(
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.red
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              Icon(Icons.person_remove_alt_1_outlined, color: Colors.white),
              widthSpace(4),
              bold16Text('Remove', color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
_buildTextWithIcon(text){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(Icons.location_on, color: Colors.green, size: 12,),
      widthSpace(4),
      bold12Text(text),

    ],
  );
}
