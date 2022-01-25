import 'package:flutter/material.dart';

class ChargeWidgetState extends StatelessWidget {
  final double caculatorBill;

  const ChargeWidgetState({Key? key, required this.caculatorBill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const Expanded(flex: 1, child: Text('Thành tiền: ')),
          Expanded(
            child: Container(
              child: Text(
                caculatorBill.ceil().toString() + ' vnđ',
                textAlign: TextAlign.center,
              ),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
