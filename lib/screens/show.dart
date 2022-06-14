import 'package:dynamic_widgets/custom-widgets/button.dart';
import 'package:dynamic_widgets/custom-widgets/container.dart';
import 'package:dynamic_widgets/custom-widgets/icons.dart';
import 'package:dynamic_widgets/custom-widgets/text-field.dart';
import 'package:dynamic_widgets/custom-widgets/text.dart';
import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  ShowScreen({Key? key, required this.itemsWidgets, required this.nameWidget})
      : super(key: key);

  var itemsWidgets;
  var nameWidget;

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  selectWidget(nameWidget) {
    switch (nameWidget) {
      case "TextField":
        return const TextFieldWidget();
      case "Text":
        return const TextWidget();
      case "Container":
        return const ContainerWidget();
      case "Button":
        return const ButtonWidget();
      case "Icon":
        return const IconWidget();
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${widget.itemsWidgets} ${widget.nameWidget} Generated"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView.builder(
              itemCount: widget.itemsWidgets,
              itemBuilder: (BuildContext context, int index) {
                return selectWidget(widget.nameWidget);
              }),
        ),
      ),
    );
  }
}
