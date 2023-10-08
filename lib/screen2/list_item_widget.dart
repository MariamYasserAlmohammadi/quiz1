import 'package:flutter/material.dart';
import 'package:quiz1/screen2/Ilist_item_data.dart';

class ListItemWidget extends StatelessWidget {
  ListItemData itemData;
  ListItemWidget(this.itemData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.all(24),
      height: 174,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffEAECF5),
        borderRadius: BorderRadius.circular(8),
        //Color(0xffEAECF5),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),

                    color: Colors.white
                ),
                child: Text(itemData.t1),
              ),
              SizedBox(
                height: 12,
              ),
              Text(itemData.t2,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                itemData.t3,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                      "assets/images/screen2/clock.png"),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    itemData.t4,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 125,
            child: Image.asset(
              itemData.imagePath,),
          ),
        ],
      ),
    );
  }
}
