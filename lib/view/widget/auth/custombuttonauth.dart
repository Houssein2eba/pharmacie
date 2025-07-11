
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: AppColor.primary,
        textColor: Colors.white,
        child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
      ),
    );
  }
}
