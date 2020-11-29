import 'package:flutter/material.dart';
import 'package:interview/constants/colors.dart';
import 'package:interview/utils%20/margins.dart';
import 'package:interview/views/sidebar.dart';
import 'package:interview/widgets/custom_text.dart';
import 'package:interview/widgets/dot_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight(context) / 3,
              width: screenWidth(context),
              color: body,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(53),
                        CustomText(
                          text: "Welcome Back",
                          fontSize: 14,
                          textColor: altBody,
                          fontWeight: FontWeight.w400,
                        ),
                        verticalSpace(18),
                        CustomText(
                          text: "Rose Cooper",
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          textColor: altBody,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        verticalSpace(53),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SideBar(),
                              ),
                            );
                          },
                          child: Container(
                            height: screenHeight(context) / 20,
                            width: screenWidth(context) / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: altBody,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight(context),
              width: screenWidth(context),
              color: altBody,
            ),
          ),
          Positioned(
            top: 190,
            right: 25,
            left: 25,
            child: Container(
              height: screenHeight(context) / 4,
              width: screenWidth(context) / 1.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0x20000000),
                    spreadRadius: 0.0,
                    offset: Offset(3.5, 5.0),
                  ),
                ],
                color: altBody,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Total Balance",
                    fontSize: 14,
                  ),
                  verticalSpace(18),
                  CustomText(
                    text: "NGN100,000",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                  verticalSpace(18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Indicator(
                        currentIndex: 0,
                        positionIndex: 0,
                      ),
                      horizontalSpaceTiny,
                      Indicator(
                        positionIndex: 1,
                      ),
                      horizontalSpaceTiny,
                      Indicator(
                        positionIndex: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
