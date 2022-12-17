import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Details extends StatelessWidget {
  Details({
    super.key,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
  });

  String price;
  String name;
  String description;
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigation(),
      body: Stack(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Image.asset(
              'assets/bg.jpeg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _header(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 80.w,
                            child: _text('Strawberry Frosted Sprinkles',
                                size: 22.sp, bold: true)),
                        _gapH(7),
                        Row(
                          children: [
                            _text(price, size: 17.sp),
                            _gapW(3),
                            Row(
                                children: List.generate(
                              5,
                              (index) => Icon(Icons.star,
                                  color: Colors.yellow.shade800, size: 5.w),
                            )),
                            _gapW(2),
                            _text("4.8"),
                            _gapW(10),
                            _btn(icon: Icons.add),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: _text("3"),
                            ),
                            _btn(icon: Icons.remove),
                          ],
                        ),
                        _gapH(7),
                        _text("About", bold: true),
                        _gapH(5),
                        _text(description),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _bottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      width: 100.w,
      height: 60.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: SizedBox(
            width: 20.w,
            child: Divider(
              thickness: 5,
              height: 7.w,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        _gapH(2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _text('Strawberry Frosted Sprinkles', bold: true),
            _text('3x', medium: true),
            _text('\$5.25', medium: true),
          ],
        ),
        _gapH(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _text('Strawberry Frosted Sprinkles', bold: true),
            _text('3x', medium: true),
            _text('\$5.25', medium: true),
          ],
        ),
        Divider(
          thickness: 0.5,
          height: 7.w,
          color: Colors.grey.shade400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _text('Total', size: 15.sp, medium: true),
            _text('\$7.35', size: 15.sp, medium: true),
          ],
        ),
        _gapH(4),
        Container(
          width: 100.w,
          height: 14.w,
          decoration: BoxDecoration(
            color: const Color(0xFF5E97FA),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: _text("C H E C K O UT", size: 10.sp, bold: true),
          ),
        )
      ]),
    );
  }
}

_header() {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(top: 15.w, left: 4.w),
        width: 100.w,
        height: 52.w,
        decoration: const BoxDecoration(
          color: Color(0xFFF49BB9),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: (() => Get.back()),
            child: Icon(Icons.chevron_left, color: Colors.white, size: 8.w),
          ),
          _gapH(15),
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
            size: 7.w,
          ),
        ]),
      ),
      Container(
        margin: EdgeInsets.only(left: 20.w, top: 20.w),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 100,
            color: Colors.black.withOpacity(.2),
            offset: const Offset(0, 50),
          ),
        ]),
        child: Image.asset(
          'assets/donuts.png',
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}

_btn({IconData? icon}) {
  return Card(
    elevation: 5,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: Colors.black,
        size: 5.w,
      ),
    ),
  );
}

Text _text(text, {size, bold = false, medium = false, color}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size ?? 12.sp,
      fontWeight: bold
          ? FontWeight.bold
          : medium
              ? FontWeight.w500
              : FontWeight.normal,
    ),
  );
}

SizedBox _gapH(double? size) => SizedBox(height: size!.w);
SizedBox _gapW(double? size) => SizedBox(width: size!.w);
