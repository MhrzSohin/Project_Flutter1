import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExploreView extends GetView {
  const ExploreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/logo/logo.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "ARestro",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.supervised_user_circle,
            size: 40,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.asset("assets/logo/bannerhomeview.png"),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search for food, restaurants..",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic_none_outlined),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
