import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';
import 'package:flutter_testing/screens/pages/sections_page.dart';

class AddAdvertisment extends StatefulWidget {
  static String routeName = "/";

  const AddAdvertisment({Key? key}) : super(key: key);

  @override
  _AddAdvertismentState createState() => _AddAdvertismentState();
}

class _AddAdvertismentState extends State<AddAdvertisment> {
  PageController controller = PageController();

  List<Widget> _list = <Widget>[
    SectionsPage(),
    Center(
      child: bold16Text('2'),
    ),
    Center(
      child: bold16Text('3'),
    ),
    Center(
      child: bold16Text('4'),
    ),
    Center(
      child: bold16Text('5'),
    ),
    Center(
      child: bold16Text('6'),
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bold16Text('Add Advertisment', color: Colors.greenAccent),
                heightSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCircleWidget('1', 'section', currentPage==0? Colors.lightGreen : Colors.white,  currentPage==0? Colors.white : Colors.lightGreen),
                    _buildCircleWidget('2', 'commition', currentPage==1? Colors.lightGreen : Colors.white, currentPage==1? Colors.white : Colors.lightGreen),
                    _buildCircleWidget('3', 'picture',currentPage==2? Colors.lightGreen : Colors.white, currentPage==2? Colors.white : Colors.lightGreen),
                    _buildCircleWidget('4', 'Details',currentPage==3? Colors.lightGreen : Colors.white, currentPage==3? Colors.white : Colors.lightGreen),
                    _buildCircleWidget('5', 'Location',currentPage==4? Colors.lightGreen : Colors.white, currentPage==4? Colors.white : Colors.lightGreen),
                    _buildCircleWidget('6', 'Rate',currentPage==5? Colors.lightGreen : Colors.white, currentPage==5? Colors.white : Colors.lightGreen),
                  ],
                ),
                heightSpace(10),
                _list[currentPage],
                // heightSpace(30),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 300,
          right: 0,
          left: 0,
          child:    Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: currentPage==5? false : true,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (currentPage < 5) {
                          currentPage++;
                        }
                      });
                    },
                    child: _buildButton('Next'),
                  ),
                ),
                widthSpace(40),
                Visibility(
                  visible: currentPage==0? false : true,
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          if (currentPage > 0) {
                            currentPage--;
                          }
                        });
                      },
                      child: _buildButton('Previous')),
                )
              ],
            ),
          )
        )
      ],

    );
  }

  _buildCircleWidget(text, title, color, textColor) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.greenAccent, width: 1),
              shape: BoxShape.circle),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: bold16Text(text, color: textColor),
            ),
          ),
        ),
        heightSpace(4),
        bold12Text(title)
      ],
    );
  }

  _buildButton(text) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: bold12Text(text, color: Colors.white),
        ),
      ),
    );
  }
}
