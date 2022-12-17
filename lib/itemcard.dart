import 'package:flutter/material.dart';
import 'package:food_order_app/details.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ItemCard extends StatelessWidget {
  ItemCard(
      {Key? key, required this.price, required this.name, required this.image})
      : super(key: key);

  String price;
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => Details(
              name: name,
              image: image,
              price: price,
              description:
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia",
            ));
      },
      child: Container(
        width: 50.w,
        height: 75.w,
        margin: EdgeInsets.only(bottom: 3.w, right: 4.w, top: 2.w),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.05),
                blurRadius: 5,
                spreadRadius: 5)
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Image.asset(
                'assets/${image}.jpeg',
                fit: BoxFit.fitHeight,
                width: 50.w,
                height: 75.w,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Colors.pink.withOpacity(.7)
                    ])),
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 4.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.add,
                              size: 15.sp,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
