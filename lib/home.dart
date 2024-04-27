import 'package:box_prop_change/setting.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Color? boxColor;
  Color? txtColor;
  String? textToShow;
  int? fontSize;
  Home({
    super.key,
    this.textToShow,
    this.fontSize,
    this.txtColor,
    this.boxColor,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Setting();
              }));
            },
            icon: Icon(Icons.edit),
          ),
        ],
        title: Text("Finalize your Sticker"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Colors.grey,
            ),
            color: widget.boxColor ,
          ),
          child: Center(
            child: Text(
              widget.textToShow.toString(),
              style: TextStyle(
                  fontSize: widget.fontSize?.toDouble(),
                  color: widget.txtColor),
            ),
          ),
        ),
      ),
    );
  }
}
