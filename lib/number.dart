import 'package:flutter/material.dart';
import 'kara.dart';

class NumberPage extends StatelessWidget {
  final int number;

  const NumberPage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.black),
      ),
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => onePage(
                          num: number,
                        )));
          },
          child: Text(
            '${number}',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 50),
          )),
    );
  }
}
