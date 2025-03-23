import 'package:flutter/material.dart';



class PinkForm extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  
  const PinkForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,// Default to false for normal text field
  });
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              errorStyle: TextStyle(
                color: Color.fromARGB(255, 149, 54, 187),
                // decoration: TextDecoration.underline,
          
                // decorationStyle: TextDecorationStyle.wavy,
              ),
              labelText: hintText,
              labelStyle:TextStyle(
                color: Color.fromARGB(255, 187, 54, 143),
                fontFamily: "Pinko",
                fontSize: 24.0,
                shadows: [
                  const Shadow(
                    color: Color.fromARGB(137, 45, 45, 45), // Color of the shadow
                    offset: Offset(2.0, 2.0), // Horizontal and Vertical offset of the shadow
                    blurRadius: 8.0, // Blur radius of the shadow
                  ),
                ],
                
              ),
              filled: true,
              
              fillColor: Color.fromARGB(255, 246, 220, 247),
              focusColor: Color.fromARGB(255, 66, 38, 68),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3.0, color: const Color.fromARGB(255, 187, 54, 143)),
              borderRadius: BorderRadius.circular(15.0), 
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: const Color.fromARGB(255, 241, 140, 201),
                ),
                borderRadius: BorderRadius.circular(15.0),
                  

              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0, color: const Color.fromARGB(255, 117, 36, 175)),
              borderRadius: BorderRadius.circular(15.0), 
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0, color: const Color.fromARGB(255, 117, 36, 175)),
              borderRadius: BorderRadius.circular(15.0), 
              ),
              
            ),
            // decoration: InputDecoration(labelText: 'First Name'),
          );
  }

}