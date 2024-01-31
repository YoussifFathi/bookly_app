import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,bottom: 10,left: 30,right: 30),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: _getCustomOutlineBorder(12,Colors.white54),
          focusedBorder: _getCustomOutlineBorder(16,Colors.white70),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ),

      ),
    );
  }

  OutlineInputBorder _getCustomOutlineBorder(double radius , Color borderColor ) {
    return   OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius,),
      borderSide:  BorderSide(
          color: borderColor
      ),
    );
  }
}
