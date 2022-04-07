import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({Key? key}) : super(key: key);

  @override
  _SectionsPageState createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  bool click= false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        bold16Text('select sections'),
        heightSpace(10),
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics:  const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _sectionListItem('Electronic', Icon(Icons.local_car_wash_rounded, color: Colors.white,));
            }
          ),
        ),
        heightSpace(10),

        SizedBox(
         height: 300,
          child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics:  const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _sectionItemsListItem();
              }
          ),
        ),
        heightSpace(10),

      ],
    );
  }

  _sectionListItem(text, icon){
    return Container(
      width: 130,
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      decoration: const BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.all(Radius.circular(20),)
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            icon,
            widthSpace(10),
            Expanded(child: bold16Text(text, color: Colors.white))
          ],
        ),
      ),
    );
  }

  _sectionItemsListItem(){
    return Container(
      height: 800,
      width: 130,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics:  const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return _sectionProductListItem('Electronic', Icon(Icons.local_car_wash_rounded, color: Colors.lightGreen,));
          }
      ),
    );
  }
  _sectionProductListItem(text, icon){
    return InkWell(
      onTap: (){
        setState(() {
          click=!click;
        });
      },
      child: Container(
        width: 130,
        margin: EdgeInsets.only(left: 5, right: 5,),
        decoration:  BoxDecoration(
            border: Border.all(color: Colors.lightGreen, width: 1),
            color: Colors.white,

            borderRadius: BorderRadius.all(Radius.circular(20),)
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    color: click==true? Colors.lightGreen[100] :Colors.white,
                    shape: BoxShape.circle
                ),
              ),
              icon,
              widthSpace(10),
              Expanded(child: bold12Text(text, color: Colors.lightGreen))
            ],
          ),
        ),
      ),
    );
  }
}
