import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:interview/constants/colors.dart';
import 'package:interview/utils%20/margins.dart';
import 'package:interview/views/home_screen.dart';
import 'package:interview/widgets/custom_text.dart';
import 'package:rxdart/subjects.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSideBarOpenedSink;
  // final bool isSideBarOpen = false;
  final _animationDuration = const Duration(milliseconds: 500);
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedController.stream;
    isSideBarOpenedSink = isSideBarOpenedController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onclick() {
    final animationStatus = _animationController.status;
    final isAnimationComplete = animationStatus == AnimationStatus.completed;
    if (isAnimationComplete) {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    } else {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, snapshot) {
        return Stack(
          children: [
            AnimatedPositioned(
              duration: _animationDuration,
              child: Scaffold(
                backgroundColor: body,
                body: Stack(
                  children: [
                    Positioned(
                      top: screenHeight(context) / 30,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Rose Cooper",
                              fontSize: 14,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                            IconButton(
                              icon: ImageIcon(
                                AssetImage("images/cancel.png"),
                                color: altBody,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight(context) / 10,
                      left: screenWidth(context) / 2.5,
                      right: 0,
                      child: Column(
                        children: [
                          ListTile(
                            title: CustomText(
                              text: "My Wallet",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                            leading: ImageIcon(
                              AssetImage(
                                "images/wallet.png",
                              ),
                              color: altBody,
                            ),
                          ),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/panalysis.png",
                              ),
                              color: altBody,
                            ),
                            title: CustomText(
                              text: "Investment Persona Analysis",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/statement.png",
                              ),
                              color: altBody,
                            ),
                            title: CustomText(
                              text: "Statement of personal Worth",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/service_request.png",
                              ),
                              color: altBody,
                            ),
                            title: CustomText(
                              text: "Service Request",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/cards.png",
                              ),
                              color: altBody,
                            ),
                            title: CustomText(
                              text: "Cards and Banks",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          verticalSpace(270),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/transhistory.png",
                              ),
                              color: altBody,
                            ),
                            title: CustomText(
                              text: "Transaction History",
                              fontSize: 12,
                              textColor: altBody,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ListTile(
                            leading: ImageIcon(
                              AssetImage(
                                "images/logout.png",
                              ),
                              color: logOut,
                            ),
                            title: CustomText(
                              text: "Logout",
                              fontSize: 12,
                              textColor: logOut,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenHeight(context) / 9,
                      left: -screenWidth(context) + 190,
                      child: Transform.rotate(
                        angle: 0.20944,
                        child: Container(
                          height: screenHeight(context) - 250,
                          width: screenWidth(context) - 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: dotInactive,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: snapshot.data ? 0 : screenHeight(context) / 15,
                      left: snapshot.data ? 0 : -screenWidth(context) + 150,
                      child: Transform.rotate(
                        angle: snapshot.data ? 0 : 0.20944,
                        child: Container(
                          height:
                              snapshot.data ? 0 : screenHeight(context) - 200,
                          width: snapshot.data ? 0 : screenWidth(context) - 75,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5.0,
                                color: Color(0x20000000),
                                spreadRadius: 0.0,
                                offset: Offset(3.5, 5.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            // color: altBody,
                          ),
                          child: HomeScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
