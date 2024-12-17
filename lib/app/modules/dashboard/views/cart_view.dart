import 'package:flutter/material.dart';
import 'package:flutterproject1/app/modules/dashboard/controllers/cartController.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/logo/logofull.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        actions: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              "assets/logo/userpic.jpg",
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
      ),
      body: Obx(() {
        return cartController.cart.isEmpty
            ? const Center(
                child: Text("Your cart is empty!"),
              )
            : ListView.builder(
                itemCount: cartController.cart.length,
                itemBuilder: (context, index) {
                  final item = cartController.cart[index];
                  return ListTile(
                    leading: Image.asset(item.imagePath, width: 50),
                    title: Text(item.name),
                    subtitle: Text("Rs ${item.price}"),
                  );
                },
              );
      }),
    );
  }
}
