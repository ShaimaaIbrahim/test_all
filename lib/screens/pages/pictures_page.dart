import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';

class PicturesPage extends StatelessWidget {
  const PicturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        heightSpace(10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics:   BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _pictureListItem();
            }
          ),
        ),
      ],
    );
  }
  _pictureListItem(){
     return Container(
       width: 120,
       height: 120,
       margin: EdgeInsets.only(right: 10),
       decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.all(Radius.circular(20))
       ),
       child: Stack(
         children: [
           Padding(
             padding: EdgeInsets.all(10),
             child: Container(
               width: 100,
               height: 100,
               // margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 0),
               decoration: BoxDecoration(
                   color: Colors.grey[300],
                   borderRadius: BorderRadius.all(Radius.circular(20))
               ),
               child:Center(
                 // padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                   child: CachedNetworkImage(imageUrl: 'https://img.freepik.com/free-photo/beautiful-scenery-pathway-forest-with-trees-covered-with-frost_181624-42376.jpg?t=st=1649969637~exp=1649970237~hmac=16e11c5701dd2fe13c0c8c0249ca0e12d8d2f1f8144171f7398a42434f54c9d1', width: 50, height: 80,)),
             ),
           ),
           Positioned(
               top: 7,
               left: 7,
               child: _buildRoundWidget(Icon(Icons.close, size: 9, color: Colors.white,), Colors.red)
           ),
           Positioned(
               top: 0,
               right: 4,
               bottom: 0,
               child: _buildRoundWidget(bold12Text('!', color: Colors.white), Colors.lightGreen)
           ),
         ],),
     );
     // Container(
     //     width: 100,
     //     height: 120,
     //     decoration: BoxDecoration(
     //         color: Colors.amber,
     //        // borderRadius: BorderRadius.all(Radius.circular(20))
     //     ),
     //     child: Padding(
     //       padding: EdgeInsets.only(right: 10),
     //       child: Stack(
     //         children: [
     //
     //         ],
     //       ),
     //     ),
     //   ),
     // );
  }
  _buildRoundWidget(icon , color){
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}
