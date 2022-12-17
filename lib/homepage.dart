import 'package:flutter/material.dart';
import 'package:food_order_app/categoryitem.dart';
import 'package:food_order_app/itemcard.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.w),
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Martin!',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    SizedBox(height: 5.w),
                    Text(
                      'What would you like to eat?',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.w),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'or type what you are looking',
                        suffixIcon: Icon(
                          Icons.search,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 4.w),
                    Row(
                      children: List.generate(
                        3,
                        (index) => ItemCard(
                          name: 'Strawberry Frosted Peanut',
                          image: "donut${index + 1}",
                          price: '\$1.75',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7.w),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Explore from Categories",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 4.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SizedBox(width: 4.w),
                  CategoryItem(
                    image: 'donut-cat',
                    name: 'New This Week',
                  ),
                  CategoryItem(
                    image: 'donut3',
                    name: 'Best Seller',
                    width: 30.w,
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
