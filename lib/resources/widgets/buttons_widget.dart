import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  Function()? onPressedTT;
  Function()? onPressedTiep;

  ButtonWidget({Key? key, this.onPressedTT, this.onPressedTiep})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  double caculatorBill = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const SizedBox(width: 3),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: widget.onPressedTT,
                  child: const Text('TÍNH TT'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey, onPrimary: Colors.black))),
          const SizedBox(width: 5),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: widget.onPressedTiep,
                  child: const Text(
                    'TIẾP',
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey, onPrimary: Colors.black))),
          const SizedBox(width: 5),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('THỐNG KÊ'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey, onPrimary: Colors.black))),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}
