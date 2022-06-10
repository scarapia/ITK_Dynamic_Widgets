import 'package:dynamic_widgets/custom-widgets/container.dart';
import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  ShowScreen({Key? key, required this.itemsWidgets}) : super(key: key);

  var itemsWidgets;

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  var numberOfWidgets;
  // var numberOfWidgets = [];
  getWidgets() {
    var _widgetsCreated = widget.itemsWidgets;
    numberOfWidgets = _widgetsCreated;
  }

  @override
  void initState() {
    // TODO: implement initState
    //_widgetsCreated = widget.items;
    super.initState();
    getWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  itemCount: numberOfWidgets.length,
                  itemBuilder: (bc, index) {
                    return (Text(
                            " Number of Widget generated: ${numberOfWidgets[index]}")
                        //ContainerWidget()

                        );
                  }),
            )));
  }
}
