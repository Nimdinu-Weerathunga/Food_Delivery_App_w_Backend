import 'package:flutter/material.dart';
import 'package:food_delivery_app_w_backend/components/my_drawer.dart';
import 'package:food_delivery_app_w_backend/components/my_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(child: Text("Hello"), title: Text("title")),
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
