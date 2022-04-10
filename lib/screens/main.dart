
import 'package:flutter/material.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:flutter_testing/screens/details.dart';
import 'package:flutter_testing/screens/drawer.dart';
import 'package:flutter_testing/screens/wish_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_advertisment.dart';
import 'home.dart';

class MainPage extends StatefulWidget {
  static String routeName = "/";

  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {

  bool visible = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int currentIndex=0;

  List pages = [
    HomePage(),
    WishListScreen(),
    HomePage(),
    AddAdvertisment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            backgroundColor: Colors.white.withOpacity(0.0),
            child: const DrawerHeader(
              child:   DrawerWidget()
            )
        ),
        bottomNavigationBar: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        currentIndex =0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: currentIndex==0 ? Colors.greenAccent : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Center(
                        child: _buildCircleIcon(icon: Icon(Icons.home, color: Colors.white,),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        currentIndex =1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: currentIndex==1 ? Colors.greenAccent : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))

                      ),
                      child: Center(
                        child: _buildCircleIcon(icon: Icon(Icons.favorite, color: Colors.white,),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        currentIndex =2;

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: currentIndex==2 ? Colors.greenAccent : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))

                      ),
                      child: Center(
                        child: _buildCircleIcon(icon: Icon(Icons.add, color: Colors.white,),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        currentIndex =3;

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: currentIndex==3 ? Colors.greenAccent : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))

                      ),
                      child: Center(
                        child: _buildCircleIcon(icon: Icon(Icons.message, color: Colors.white,),),
                      ),
                    ),
                  ),
                )
              ],
            )
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only( left: 10, right: 10, top: 20),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildProfileInfo(),
                          Image.asset(''),
                          const Icon(Icons.notifications, color: Colors.green,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              bold16Text('EN'),
                              const Icon(Icons.language, color: Colors.green,)
                            ],
                          )
                        ],
                      ),
                      pages[currentIndex],

                    ],
                  ),
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Visibility(
                        visible: visible,
                        child: DrawerWidget()),
                  ),
                ],
              )

            ),
          ),
        )
    );
  }
  _buildProfileInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Icon(
                Icons.filter_list_rounded,
                color: Colors.green,
                size: 40,
              ),
            ),
            widthSpace(4),
            CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
              radius: 20,
            ),


          ],
        ),
        heightSpace(10),
        bold12WithLineText('Activate Account')
      ],
    );
  }
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
      padding: const EdgeInsets.all(5),
      child:  Center(
        child: icon,
      ),
    ),
  );
}




