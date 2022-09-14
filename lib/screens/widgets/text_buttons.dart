
import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    Key? key, required this.gender, required this.onPressed,required  this.isSelected,
  }) : super(key: key);
  final String gender;
  final Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
          height: 40,
          width: 115,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
  backgroundColor: isSelected ? Colors.grey.shade400:Colors.grey.shade900,
              side: const BorderSide(
                color: Colors.white70,
              ),
            ),
            onPressed: onPressed,
            child:  Text(gender,style: (TextStyle(color:isSelected ? Colors.black:Colors.white)),)
          ),
        );
    
    
  }
}
