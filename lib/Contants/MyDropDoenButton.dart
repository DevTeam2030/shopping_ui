import 'package:flutter/material.dart';
import 'package:shopping_ui/Contants/MyText.dart';

class MyDropDoenButton extends StatefulWidget {
  List data;

  String hint;
  MyDropDoenButton({@required this.data,@required this.hint});
  @override
  _MyDropDoenButtonState createState() => _MyDropDoenButtonState();
}

class _MyDropDoenButtonState extends State<MyDropDoenButton> {
  var _selected_item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
      height: 40,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.black)
      ),
      child: DropdownButton(


        isDense: true,
        isExpanded: false,
        icon: Icon(Icons.arrow_drop_down),
        //  focusColor: Colors.blue,
        hint: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10),
          child:  MyText(title: widget.hint,),
        ),
        //text shown on the button (optional)
        elevation: 16,
        items: widget.data.map((val) => DropdownMenuItem(
          value: val,
          child: Text(val),
        )).toList(),
        onChanged: (value) {
          setState(() {
           _selected_item = value;
          });
        },
        value: _selected_item,
        //  value: selected_size,
      ),
    );
  }
}
