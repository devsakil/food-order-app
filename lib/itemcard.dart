import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    this.title,
    this.image,
    this.price,
  }) : super(key: key);

  final String? title;
  final double? price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.w, right: 4.w),
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 5,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(image!, fit: BoxFit.cover, width: 50.w),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.pink.withOpacity(.7)
                  ])),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ $price',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(Icons.add, size: 15.sp),
                        )
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
