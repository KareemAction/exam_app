import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButtonAuth({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: onPressed, 
                  child: Text (title),
                  );
  }
}

class CustomButtonUpload extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final bool isSelected;
  const CustomButtonUpload({super.key, this.onPressed, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                  height: 35,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color:  isSelected ? Colors.green : Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: onPressed, 
                  child: Text (title),
                  );
  }
}