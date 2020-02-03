import 'package:flutter/material.dart';

Widget bottomSheetBuilder(BuildContext context) {
  return Container(
    color: Color(0xff757575),
    child: Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w600),
          ),
          TextField(
            autofocus: true,
          ),
          FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {},
              child: Text('Add',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.w600))),
        ],
      ),
    ),
  );
}
