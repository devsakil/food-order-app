
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    Key? key,
    this.title,
    this.image,
    this.width,
  }) : super(key: key);

  final String? title;
  final String? image;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.w),
      width: width ?? 50.w,
      height: 40.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width ?? 50.w,
              height: 30.w,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 2.w),
            Center(
              child: Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
