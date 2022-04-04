import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class DetailsScreen extends StatefulWidget {
 // static String routeName ='/';


  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}




class _DetailsScreenState extends State<DetailsScreen> {

  String currentImage = '';
  var index =0;

  List<String> imagesUrl = [
    'https://img.freepik.com/free-psd/smartphone-mockup_1310-812.jpg?w=900&t'
        ''
        '=st=1649025080~exp=1649025680~hmac=dbc5ebc3ef7bd5f4b1b45109d570812858b21de8f19341b1744ac370f4dbb56d',

    'https://img.freepik.com/free-photo/mockup-image-woman-using-typing-tablet-keyboard-with-blank-white-desktop-screen-as-computer-pc-table_9563-15623.jpg'
  ];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpace(20),
                const SearchTextField(),
                heightSpace(15),
                bold16Text('Electronics/Mobile/Apple'),
                heightSpace(10),
                _buildCustomSliderImage(context),
                heightSpace(10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCircleIcon(icon: Icon(Icons.refresh, color: Colors.white,)),
                      widthSpace(20),

                      _buildCircleIcon(icon: Icon(Icons.favorite, color: Colors.white,)),
                      widthSpace(20),

                      _buildCircleIcon(icon: Icon(Icons.message, color: Colors.white,))
                    ],
                  ),
                ),
                heightSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildTextWithIcon('owner name', 'name'),
                    _buildTextWithIcon('egypt', ''),
                    _buildTextWithIcon('01000838383', '')
                  ],
                ),
                heightSpace(10),
                bold16Text('Iphone pro89 778 778'),
                heightSpace(5),
                bold12Text('Descriptions Descriptions Descriptions Descriptions Descriptions'
                    ' Descriptions Descriptions Descriptions', color: Colors.grey),
                Divider(
                  color: Colors.green,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
                      radius: 20,
                    ),
                    widthSpace(20),
                    Container(
                      height: 45,
                      width: 200,
                      child: TextField(
                        // controller: controller,
                        onChanged: (val) {},
                        onTap: () {},
                        decoration: InputDecoration(
                            hintText: 'write your comment here.',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            focusedBorder:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                    widthSpace(20),
                    _buildStyledButton()
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                heightSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bold16Text('Comments'),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return  ListTile(
                        leading:  CircleAvatar(
                          backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
                          radius: 20,
                        ),
                        title: bold12Text('Mhmoud'),
                        subtitle: bold12Text('Mhmoud flutter developer--'),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.refresh),
                            bold12WithLineText('replay'),
                          ],
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: Colors.green,);
                  },
                  ),
                ),
                heightSpace(10),

                bold16Text('Similar Products'),
                heightSpace(10),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return _mostPopularListItem();
                    },
                  ),
                ),
              ],
            ),
          ),

    );
  }
  _buildCustomSliderImage(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.green),
        borderRadius: BorderRadius.all( Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: (){
                  if(index <=0){
                    return;
                  }
                  setState(() {
                    index--;
                  });
                },
                child: Icon(Icons.arrow_back_ios_sharp, size: 40, color: Colors.green,)),
            CachedNetworkImage(imageUrl: imagesUrl[index], ),
            InkWell(
                onTap: (){
                  if(index < imagesUrl.length-1){
                    setState(() {
                      index++;
                    });

                }

                  },
                child: Icon(Icons.navigate_next_sharp, size: 40, color: Colors.green,)),
          ],
        ),
      ),
    );
  }
}
_buildProfileInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Icon(
        Icons.filter_list_rounded,
        color: Colors.green,
        size: 40,
      ),
      widthSpace(4),
      const CircleAvatar(
        backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
        radius: 20,
      ),

    ],
  );
}
_buildCircleIcon({required Icon icon,}){
  return Container(
    width: 40,
    height: 40,
    decoration: const BoxDecoration(
      color: Colors.green,
      shape: BoxShape.circle
    ),
    child: Padding(
      padding: EdgeInsets.all(5),
      child:  Center(
        child: icon,
      ),
    ),
  );
}

_buildTextWithIcon(text, type){
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        type=='name'?  Icon(Icons.perm_identity , color: Colors.green,): const Icon(Icons.location_on, color: Colors.green,),
        widthSpace(5),
        Expanded(child: bold9Text(text)),

      ],
    ),
  );
}

_buildStyledButton(){
   return Container(
     height: 45,
     decoration: const BoxDecoration(
         color: Colors.green,
         borderRadius: BorderRadius.all(Radius.circular(20)),
     ),
     child: Center(
       child: Padding(
         padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
         child: bold12Text('Submit', color: Colors.white),
       ),
     ),
   );
}
_mostPopularListItem(){
  return Stack(
    children: [
      Container(
        width: 150,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.green),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.green),
                borderRadius: BorderRadius.all(const Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Center(
                  child: Image.network(
                    'https://img.freepik.com/free-photo/mockup-image'
                        '-woman-using-typing-tablet-keyboard-with-blank-white-desktop-screen-as-'
                        'computer-pc-table_9563-15623.jpg',
                    width: 40,
                    height: 60,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpace(4),
                  bold16Text('Head Phone'),
                  bold12Text('category', color: Colors.grey),
                  Row(
                    children: [
                      _buildTextWithIcon('Name', 'name'),
                      widthSpace(5),
                      _buildTextWithIcon('Location', ''),
                    ],
                  ),
                  bold12Text('product description here in this area', color: Colors.black26),
                ],
              ),
            )

          ],
        ),
      ),
      Positioned(
        top: 5,
        right: 30,
        child: Icon(Icons.star, size: 20, color: Colors.green,),
      ),
      Positioned(
        top: 25,
        right: 30,
        child: Icon(Icons.star, size: 20, color: Colors.green,),
      ),
      Positioned(
        top: 50,
        right: 30,
        child: Icon(Icons.star, size: 20, color: Colors.green,),
      )
    ],
  );
}

