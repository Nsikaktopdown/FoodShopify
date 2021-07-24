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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
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
                        color: Pallet.white,
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Text(
                      "Pickup",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              Expanded(child: foodList())
            ],
          ),
        ),
      ),
    );
  }

  Widget foodList() {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return _foodItem();
          }),
    );
  }

  Widget _foodItem() {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
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
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Text("Indian Salad Receipe",
                    style: TextStyle(
                        color: Pallet.mainTextDarkColor, fontSize: 16)),
                Spacer(),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                  decoration: BoxDecoration(
                      color: Pallet.newItemBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Text(
                    "4.4",
                    style: TextStyle(color: Colors.black, fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text("\$\$ * Sandwiches * Salad",
              style: TextStyle(color: Pallet.textLight)),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 6, left: 10, right: 10, bottom: 6),
                decoration: BoxDecoration(
                    color: Pallet.newItemBackgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Text(
                  "20-30 Min",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 6, left: 10, right: 10, bottom: 6),
                decoration: BoxDecoration(
                    color: Pallet.newItemBackgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Text(
                  "\$20.00 Fee",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
