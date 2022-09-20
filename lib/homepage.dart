import 'package:flutter/material.dart';
import 'package:myapp/catitem.dart';
import 'package:myapp/itemcard.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.w),
                    Text(
                      'Hi Martin!',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    SizedBox(height: 5.w),
                    Text(
                      'What would you like to eat?',
                      style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
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
                    SizedBox(height: 8.w),
                  ],
                ),
              ),
              SizedBox(
                width: 100.w,
                height: 60.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 4.w),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) => ItemCard(
                          image: 'assets/donut${index + 1}.jpeg',
                          title: 'Strawbeary Frosted Peanut',
                          price: 1.75,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.w),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Explore from categories',
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 3.w),
                    const CatItem(
                      image: 'assets/donut-cat.jpeg',
                      title: 'New this week',
                    ),
                    CatItem(
                      width: 30.w,
                      image: 'assets/donut-cat.jpeg',
                      title: 'Best Seller',
                    ),
                    CatItem(
                      width: 40.w,
                      image: 'assets/donut-cat.jpeg',
                      title: 'Best Review',
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
