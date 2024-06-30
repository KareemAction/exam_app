import 'package:flutter/material.dart';

class CustomTextFormAdd extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  

  const CustomTextFormAdd ({super.key, required this.hinttext, required this.mycontroller, required this.validator, });
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(

                validator: validator,
                controller: mycontroller,
                decoration: InputDecoration(
                  prefixIcon: 
                     Icon(
                      Icons.abc,
                    ),
                  
                  hintText: hinttext,
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey),
                    
                  
                  ),
                ),
              );
  }
}