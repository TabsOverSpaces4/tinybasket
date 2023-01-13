import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151.0,
      width: 400.0,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(56, 158, 158, 158),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
            // child: Row(children: [
            //   Column(children: [
            //     Container(
            //       height: 23,
            //       width: 23,
            //       color: const Color.fromARGB(60, 92, 90, 90),
            //       decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(2))
            //       ),
            //     )
            //   ],)
            // ],)
            )
      );
  }
}
