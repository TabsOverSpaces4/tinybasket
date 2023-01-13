import 'package:flutter/material.dart';

class VendorsCard extends StatefulWidget {
  const VendorsCard({super.key});

  @override
  State<VendorsCard> createState() => _VendorsCardState();
}

class _VendorsCardState extends State<VendorsCard> {
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