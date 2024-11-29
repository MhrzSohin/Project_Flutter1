import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SearchItemsView extends GetView {
  const SearchItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchItemsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
