import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_shopify/constants/constants.dart';
import 'package:food_shopify/utils/pallet.dart';
import 'package:food_shopify/utils/utils.dart';

class FoodList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FoodListState();
}

class FoodListState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(width: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Text(
                      "Delivery",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Text(
                      "Pickup",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              _foodItem()
            ],
          ),
        ),
      ),
    );
  }

  Widget _foodItem() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Image.asset(
            Constant.IMAGE_DIR + "dummy_food.jpg",
            height: Utils.getDeviceHeight(context) / 5,
            width: Utils.getDeviceWidth(context),
            fit: BoxFit.cover,
          )),
          Container(
            child: Row(
              children: [
                Text("Indian Salad Receipe",
                    style: TextStyle(color: Colors.black)),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                  decoration: BoxDecoration(
                      color: Pallet.textLight,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Text(
                    "4.4",
                    style: TextStyle(color: Colors.black, fontSize: 6),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
