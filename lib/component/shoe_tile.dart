import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.52,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            shoe.imagepass,
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          Text(
            shoe.description,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " \$ ${shoe.price}",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.black),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
