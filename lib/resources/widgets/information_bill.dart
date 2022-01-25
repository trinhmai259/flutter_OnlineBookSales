import 'package:flutter/material.dart';

class InformationBill extends StatefulWidget {
  TextEditingController bookQuantityController, customerNameContronller;

  InformationBill(
      {Key? key,
      required this.bookQuantityController,
      required this.customerNameContronller})
      : super(key: key);

  @override
  _InformationBillState createState() => _InformationBillState();
}

class _InformationBillState extends State<InformationBill> {
  //bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Text('Tên khách hàng: '),
              ),
              Expanded(
                  flex: 1,
                  child: TextField(
                    controller: widget.customerNameContronller,
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Text('Số lượng sách: '),
              ),
              Expanded(
                  flex: 1,
                  child: TextField(
                    controller: widget.bookQuantityController,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
