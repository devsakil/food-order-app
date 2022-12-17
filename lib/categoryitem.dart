import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key, this.width, required this.name, required this.image})
      : super(key: key);

  double? width;
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.w, right: 4.w, top: 2.w),
      height: 35.w,
      width: width ?? 50.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
            spreadRadius: 5)
      ], borderRadius: BorderRadius.circular(4.w), color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.w),
        child: Column(children: [
          SizedBox(
            width: width ?? 50.w,
            height: 25.w,
            child: Image.asset(
              'assets/${image}.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 2.w),
          Text(
            name,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
          )
        ]),
      ),
    );
  }
}
