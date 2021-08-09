import 'package:animation_2/controllers/Incremental_Controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'rounded_icon_btn.dart';
import 'package:provider/provider.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    Key? key,
  }) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  void _incrementValue(BuildContext context){
    Provider.of<IncrementalController>(context,listen: false).incrementValue();

  }

  void _decrementValue(BuildContext context){
    Provider.of<IncrementalController>(context,listen: false).decrementValue();
  }

  void resetValue(BuildContext context){
    Provider.of<IncrementalController>(context,listen: false).resetValue();
  }

  @override
  void initState() {
    super.initState();
    resetValue(context);
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<IncrementalController>(create:(_)=>IncrementalController(),
    child:   Container(
        decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
    borderRadius: const BorderRadius.all(Radius.circular(40)),
    ),
    child: Row(
    children: [
    RoundIconBtn(
    iconData: Icons.remove,
    color: Colors.black38,
    press: () {
    _decrementValue(context);
    },
    ),
    Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: defaultPadding / 4),
    child: Text(
    "${Provider.of<IncrementalController>(context).value.toString()}",
    style: TextStyle(
    fontSize: 14, fontWeight: FontWeight.w800),
    ),
    ),
    RoundIconBtn(
    iconData: Icons.add,
    press: () {
    _incrementValue(context);
    },
    ),
    ],
    ),
    )
    );


  }
}