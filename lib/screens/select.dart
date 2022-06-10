import 'package:dynamic_widgets/screens/show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectScreen extends StatefulWidget {
  SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  //final TextEditingController _itemsWidgetsCtrl = TextEditingController();
  late TextEditingController controller;
  bool isButtonActive = true;
  var quantityWigets;
  var widgetSelected = "TextField";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("widget selected: $widgetSelected"),
              DropdownButton(
                  value: widgetSelected,
                  onChanged: (val) {
                    setState(() {
                      widgetSelected = val.toString();
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text("TextField"),
                      value: "TextField",
                    ),
                    DropdownMenuItem(
                      child: Text("Text"),
                      value: "Text",
                    ),
                    DropdownMenuItem(
                      child: Text("Container"),
                      value: "Container",
                    ),
                    DropdownMenuItem(
                      child: Text("Button"),
                      value: "Button",
                    ),
                    DropdownMenuItem(
                      child: Text("Icon"),
                      value: "Icon",
                    ),
                  ]),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number of widgets to generate:',
                ),
                keyboardType: TextInputType.number, //Numbers-Only-Keyboard
              ),
              ElevatedButton(
                  //onPressed: null,
                  onPressed: isButtonActive
                      ? () {
                          setState(() {
                            quantityWigets = controller.text;
                            isButtonActive = false;
                            print(quantityWigets);
                            Get.to(ShowScreen(itemsWidgets: quantityWigets,));
                          });
                        }
                      : null,
                  
                  child: Text("Generate")),
            ],
          ),
        ),
      ),
    );
  }
}
