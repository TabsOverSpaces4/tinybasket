import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color_constants.dart';

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
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 6.5),
                  height: 73.0,
                  width: 92.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(162, 185, 184, 184),
                        borderRadius: BorderRadius.all(Radius.circular(11.0))),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Row(
                        children: const [
                          Text(
                            'Eggplant',
                            style: TextStyle(fontSize: 11.5),
                          ),
                          Text(
                            'Cost',
                            style: TextStyle(fontSize: 9),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.menu_rounded,
                      color: ColorConstants.secondaryAppColor,
                      size: 31,
                    ),
                  ],
                )
              ],
            )));
  }
}
