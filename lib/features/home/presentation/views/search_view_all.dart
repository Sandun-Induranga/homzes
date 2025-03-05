import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/property_list.dart';

class SearchViewAll extends StatelessWidget {
  const SearchViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FC),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Hi, Stanislav"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("New Offers", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            const Expanded(
              child: PropertyList(isViewAll: true),
            ),
          ],
        ),
      ),
    );
  }
}
