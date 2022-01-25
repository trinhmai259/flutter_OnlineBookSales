import 'package:flutter/material.dart';
import 'package:flutter_book_sales/views/next_screen.dart';

class ImageButton extends StatefulWidget {
  const ImageButton({Key? key}) : super(key: key);

  @override
  _ImageButtonState createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Thoát'),
                    content: const Text('Bạn muốn thoát ứng dụng?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'HUỶ'),
                        child: const Text('HUỶ'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NextScreen())),
                        child: const Text('ĐỒNG Ý'),
                      ),
                    ],
                  ),
                ),
            icon: const Icon(Icons.logout))
      ],
    );
  }
}
