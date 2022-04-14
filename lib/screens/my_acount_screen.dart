import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';
import 'package:flutter_testing/widgets/styled_button.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/app_bar.dart';
import '../widgets/dropdown_widget.dart';
import '../widgets/styles_textfiels.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  var imageFile = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children:  [
             AppBarWidget(),
             heightSpace(15),
             Padding(
               padding: EdgeInsets.only(left: 30, right: 30),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                 imageFile==null?   Center(
                     child: CircleAvatar(
                       backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1649014586~exp=1649015186~hmac=f3a9dce45a5216993cd0c89d474be064de38e915d0b1bf45f115fb15b994d715'),
                       radius: 40,
                     ),
                   ): Image.file(File(imageFile!.path)),
                   heightSpace(5),
                   InkWell(
                     onTap: (){

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.add_box_rounded, color: Colors.green,),
                         bold16Text('Edit profile pic')
                       ],
                     ),
                   ),
                   heightSpace(20),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Icon(Icons.add_box_rounded, color: Colors.lightGreen,),
                       bold12Text('Edit', )
                     ],
                   ),
                   heightSpace(20),
                   Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child:  Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('Username', color: Colors.grey),
                               StyledTextField(height: 40,),
                             ],
                           )
                       ),
                       widthSpace(20),
                       Expanded(
                           flex: 1,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('City', color: Colors.grey),
                               DropDownWidget()
                             ],
                           )
                       ),

                     ],
                   ),
                   heightSpace(20),
                   Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child:  Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('E-mail', color: Colors.grey),
                               StyledTextField(height: 40,),
                             ],
                           )
                       ),
                       widthSpace(20),
                       Expanded(
                           flex: 1,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('Mobile Number', color: Colors.grey),
                               StyledTextField(height: 40,),
                             ],
                           )
                       ),

                     ],
                   ),
                   heightSpace(20),
                   Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child:  Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('password', color: Colors.grey),
                               StyledTextField(height: 40, isPassword: true, maxLines: 1,),
                             ],
                           )
                       ),
                       widthSpace(20),
                       Expanded(
                           flex: 1,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               bold16Text('confirm password', color: Colors.grey),
                               StyledTextField(height: 40, isPassword : true, maxLines: 1,),
                             ],
                           )
                       ),

                     ],
                   ),
                   heightSpace(40),
                   Center(child: StyledButton())
                 ],
               ),
             ),

           ],
         )
       ),
     ),
    );
  }

  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.green,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: Colors.green,),
              ),

              Divider(height: 1,color: Colors.green,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: Colors.green,),
              ),
            ],
          ),
        ),);
    });
  }
  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
