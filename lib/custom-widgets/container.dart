import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.amber,
       
          border: Border.all(color: Colors.black, width: 8),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(12));
  }
}
