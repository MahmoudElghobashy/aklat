import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomTextField({required this.icon,required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator:(value){
          if(value!.isEmpty){
            return'value  is empty';
          }

        } ,
        cursorColor:Colors.white54 ,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          filled: true,
          fillColor:Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
        ),
      ),
    );
  }
}