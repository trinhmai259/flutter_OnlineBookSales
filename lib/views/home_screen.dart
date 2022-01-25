import 'package:flutter/material.dart';
import 'package:flutter_book_sales/resources/widgets/buttons_widget.dart';
import 'package:flutter_book_sales/resources/widgets/charge_widget.dart';
import 'package:flutter_book_sales/resources/widgets/imagebutton.dart';
import 'package:flutter_book_sales/resources/widgets/information_bill.dart';
import 'package:flutter_book_sales/resources/widgets/statistic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;
  double caculatorBill = 0;
  late TextEditingController bookQuantityController, customerNameController;
  int countCustomer = 0;
  int countCustomerVip = 0;
  double salesSum = 0;

  @override
  void initState() {
    bookQuantityController = TextEditingController();
    customerNameController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.green,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Chương trình bán sách Online",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Thông tin hoá đơn",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          preferredSize: const Size(double.infinity, 60)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            InformationBill(
              bookQuantityController: bookQuantityController,
              customerNameContronller: customerNameController,
            ),
            ChargeWidgetState(caculatorBill: caculatorBill),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 150),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Text('Khách hàng VIP'),
                  ),
                ],
              ),
            ),
            ButtonWidget(
              onPressedTT: () {
                double calBill =
                    double.parse(bookQuantityController.text) * 20000;

                setState(
                  () {
                    caculatorBill = calBill;
                    //salesSum += caculatorBill;
                  },
                );
              },
              onPressedTiep: () {
                setState(() {
                  countCustomer++;
                  salesSum += caculatorBill;
                  if (isChecked = true) {
                    countCustomerVip++;
                  }
                });
              },
            ),
            Statistic(
              customerSumContent: countCustomer.toDouble(),
              customerVipSumContent: countCustomerVip.toDouble(),
              salesSumContent: salesSum,
            ),
            const ImageButton()
          ],
        ),
      ),
    );
  }
}
