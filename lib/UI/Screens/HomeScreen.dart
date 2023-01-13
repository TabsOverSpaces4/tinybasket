import 'package:flutter/material.dart';
import 'package:tinybasket/UI/Elements/categories.dart';
import 'package:tinybasket/UI/Elements/popularCard.dart';
import 'package:tinybasket/UI/Elements/vendorsCard.dart';


class HomeScreenInternal extends StatefulWidget {
  const HomeScreenInternal({super.key});

  @override
  State<HomeScreenInternal> createState() => _HomeScreenInternalState();
}

class _HomeScreenInternalState extends State<HomeScreenInternal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                child: Container(
                  height: 148.0,
                  width: 400.0,
                  color: Colors.transparent,
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(56, 158, 158, 158),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                     ),
                ),
              ),
              const TextButton(onPressed: null, child: Text(
                'Popular This Month!',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                  )),
                  Row(children: const [
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                  ],),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(onPressed: null, child: Text(
                'Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold,),
                    )),
                  ),
                  const CategoriesWidget(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(onPressed: null, child: Text(
                'Trending The List',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Row(children: const [
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                    SizedBox(width: 2,),
                    PopularThisMonth(),
                  ],),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(onPressed: null, child: Text(
                'Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Row(children: const [
                    VendorsCard(),
                    SizedBox(width: 2,),
                    VendorsCard(),
                    SizedBox(width: 2,),
                    VendorsCard(),
                    SizedBox(width: 2,),
                    VendorsCard(),
                    SizedBox(width: 2,),
                  ]),
            ],

          ),
        )

        );
  }
}
