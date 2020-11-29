import 'package:flutter/material.dart';
import 'package:interview/constants/colors.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  Indicator({this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: positionIndex == currentIndex
          ? MediaQuery.of(context).size.width / 100 * 3.8
          : MediaQuery.of(context).size.width / 100 * 2.4,
      height: positionIndex == currentIndex
          ? MediaQuery.of(context).size.height / 100 * 1.8
          : MediaQuery.of(context).size.height / 100 * 1.1,
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid,
              color: positionIndex == currentIndex ? body : dotInactive),
          color: positionIndex == currentIndex ? body : dotInactive,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width / 100 * 30)),
    );
  }
}
