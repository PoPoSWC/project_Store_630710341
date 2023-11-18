
import 'package:flutter/material.dart';
import 'package:project_store/models/list_item.dart';
import 'package:project_store/screens/home/stock.dart';
class Store_list extends StatelessWidget {
  final TodoItem item;
  const Store_list({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
             Expanded( child: ElevatedButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Stockpage(items: item,)),
              );
            }, child: Text(item.county)),)
          ],
        ),
      ),
    );
  }
}