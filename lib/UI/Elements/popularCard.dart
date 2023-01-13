import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularThisMonth extends StatefulWidget {
  const PopularThisMonth({super.key});

  @override
  State<PopularThisMonth> createState() => _PopularThisMonthState();
}

class _PopularThisMonthState extends State<PopularThisMonth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.0,
      width: 105.0,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(56, 158, 158, 158),
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
      ),
    );
  }
}
