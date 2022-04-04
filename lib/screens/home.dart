import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//add this to utils

Widget widthSpace(double widthSpace) {
  return SizedBox(
    width: widthSpace,
  );
}

Widget heightSpace(double heightSpace) {
  return SizedBox(
    height: heightSpace,
  );
}

Widget bold16Text(String header, {Color? color}) {
  return Text(
    header,
    maxLines: 2,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color == null ? Colors.black : color,
    ),
  );
}

Widget bold12WithLineText(String header, {Color? color}) {
  return Text(
    header,
    maxLines: 2,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontSize: 12,
      color: color == null ? Colors.black : color,
    ),
  );
}

Widget bold12Text(String header, {Color? color}) {
  return Text(
    header,
    maxLines: 2,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: color == null ? Colors.black : color,
    ),
  );
}
Widget bold9Text(String header, {Color? color}) {
  return Text(
    header,
    maxLines: 2,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 9,
      color: color == null ? Colors.black : color,
    ),
  );
}

class HomePage extends StatelessWidget {

  static String routeName ='/';

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only( left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpace(20),
                const SearchTextField(),
                 heightSpace(10),
                _buildMainCard(),
                heightSpace(15),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _buildSpecialCard(),
                    ),
                    widthSpace(10),
                    Expanded(
                      flex: 1,
                      child: _buildSpecialCard(),
                    )
                  ],
                ),
                heightSpace(5),
                bold16Text('Sections'),
                heightSpace(10),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildSectionListItem();
                    },
                  ),
                ),
                heightSpace(20),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network('https://cdn-icons-png.flaticon.com/512/882/882700.png', width: 100, height: 50,);
                    },
                  ),
                ),
                Divider(color: Colors.green, height: 3,),
                heightSpace(10),

                Row(
                  children: [
                    bold16Text('Most Popular'),
                    const Spacer(),
                    const Icon(Icons.arrow_back_ios_rounded, size: 20, color: Colors.green,)
                  ],
                ),
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
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        // controller: controller,
        onChanged: (val) {},
        onTap: () {},
        decoration: InputDecoration(
            hintText: 'search products , brands sections, etc',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            fillColor: Colors.white,
            filled: true),
      ),
    );
  }
}

_buildMainCard() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    bold16Text('Mac Boc Bro 2090', color: Colors.white),
                    heightSpace(5),
                    bold12Text('test res ggd dhhd djjdjd djdjdj djjdjjd',  color: Colors.white),
                  ],
                ),
              ),
              widthSpace(10),
              Expanded(
                  flex: 1,
                  child: Image.network(
                      'https://img.freepik.com/free-photo/mockup-image-woman-using-typing-tablet-keyboard-with-blank-white-desktop-screen-as-computer-pc-table_9563-15623.jpg'))
            ],
          ),
          heightSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: bold16Text('price',  color: Colors.white)),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.title,
                      size: 20,
                        color: Colors.white
                    ),
                    widthSpace(5),
                    Icon(
                      Icons.favorite,
                      size: 20,
                        color: Colors.white
                    ),

                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: bold16Text('Mac Boc Bro',  color: Colors.white))
            ],
          )
        ],
      ),
    ),
  );
}

_buildSpecialCard() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://img.freepik.com/free-photo/mockup-image'
            '-woman-using-typing-tablet-keyboard-with-blank-white-desktop-screen-as-'
            'computer-pc-table_9563-15623.jpg',
            width: 30,
            height: 50,
            fit: BoxFit.fill,
          ),
          widthSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bold12Text('Huawei Phone', color: Colors.white),
              heightSpace(4),
              bold9Text('Test sts shhsjs', color: Colors.white),
              heightSpace(4),
              // Row(
              //   children: [
              //     bold12Text('indetails', color: Colors.white),
              //     const Spacer(),
              //     bold12WithLineText('View', color: Colors.white)
              //   ],
              // )
            ],
          )
        ],
      ),
    ),
  );
}
_buildSectionListItem(){
  return Container(
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(const Radius.circular(10)),
      border: Border.all(width: 1, color: Colors.green)
    ),
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: bold16Text('section', color: Colors.green),

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
