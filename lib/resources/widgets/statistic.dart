import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  double customerSumContent = 0;
  double customerVipSumContent = 0;
  double salesSumContent = 0;
  Statistic(
      {Key? key,
      required this.customerSumContent,
      required this.customerVipSumContent,
      required this.salesSumContent})
      : super(key: key);

  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  get countCus => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
      child: Card(
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text("Thông tin thống kế"),
            textWidget(
              labelText: "Tổng số KH: ",
              content: widget.customerSumContent.toString(),
            ),
            const SizedBox(height: 15),
            textWidget(
              labelText: "Tổng số KH là VIP: ",
              content: widget.customerVipSumContent.toString(),
            ),
            const SizedBox(height: 15),
            textWidget(
              labelText: "Tổng doanh thu: ",
              content: widget.salesSumContent.toString(),
            ),
          ],
        ),
      )),
    );
  }

  textWidget({required String labelText, required String content}) {
    return Container(
      child: Row(
        children: [
          Text(labelText, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(content)
        ],
      ),
    );
  }
}
