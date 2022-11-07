import 'package:flutter/material.dart';

const double bottomContainerHeight = 80;
const bottomContainerColor = Color(0XFFEB1555);
const activeCardColor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
              ],
            )),
            Expanded(child: ReusableCard()),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            )),
            Container(
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color? color;
  ReusableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? activeCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
