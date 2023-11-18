import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_store/models/list_item.dart';
import 'package:project_store/screens/home/stock.dart';

class Productpage extends StatelessWidget {
  final String Kp;
  final TodoItem name;
  final String A3;
  final int cp;
  final String pname;

  const Productpage(
      {super.key,
      required this.Kp,
      required this.name,
      required this.A3,
      required this.cp,
      required this.pname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(foregroundImage: AssetImage(A3), radius: 100)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new SizedBox(width: 100,height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            pname,
                            style: TextStyle(fontSize: 40.0),
                          )
                        ],
                      ),Row(
                        children: [Expanded(child: Text(Kp))],
                      ),
                      Row(
                        children: [
                          Text(name.county + "เหลือสินค้าคงเหลือ : " + cp.toString())
                        ],
                      ),new SizedBox(height: 50.0,)
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              new SizedBox(width:100,height:60,child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Stockpage(
                          items: name,
                        )),
                  );
                },
                child: Text("back"),
              ),)
            ],
          )
        ],
      ),
    );
  }
}
