import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    var dropdownvalue = 'Cairo';
    List<String> items = ['Cairo', 'Giza'];

    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
       border: Border.all(color: Colors.lightGreen, width: 1)
       // color: Colors.lightGreen,
      ),
      child: DropdownButton(
        isExpanded: true,
        iconSize: 0.0,
        underline: const SizedBox(),
        value: dropdownvalue,
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Visibility(
                        visible: items.indexOf(dropdownvalue)==0 ? true : false,
                        child: Icon(Icons.keyboard_arrow_down, color: Colors.lightGreen, textDirection: TextDirection.rtl,)),
                    bold16Text(items, color: Colors.grey)
                  ],
                )),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue =newValue!;
          });

        },
      ),
    );
  }
}
