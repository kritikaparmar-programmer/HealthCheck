import 'package:flutter/material.dart';





class TextFField extends StatelessWidget {

  final String hintText;
  final ValueChanged<String> onChanged;
  final validator;
  final keyboardinput;

  const TextFField({
    Key key,
    this.hintText,
    this.onChanged,
    this.validator,
    this.keyboardinput
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(                              
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextFormField(
            onChanged: onChanged,
            validator: validator,
            style: TextStyle(color:Colors.black),
            decoration: InputDecoration(                 
            hintText: hintText,                                
            hintStyle: TextStyle(color: Colors.black),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.10)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0x42000000).withOpacity(0.05)),
                borderRadius: BorderRadius.circular(20.0))
          ),
          ),
        ),
         SizedBox(height:25)
      ],
    );
  }
}