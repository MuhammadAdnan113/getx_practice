import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/Counter.dart';
import 'FirstPage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Calculator controller = Get.put(Calculator());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Obx(() => Center(child: Text("${controller.x}"))),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: ElevatedButton(
                    child: const Text("Increment"),
                    onPressed: () {
                      controller.incrementX();
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Decrement"),
                    onPressed: () {
                      controller.decrementX();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => FirstPage(),
                        arguments: {'valuex': controller.x});
                  },
                  child: const Text('Go to Next Screen'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.off(() => FirstPage(),
                        arguments: {'valuex': controller.x});
                  },
                  child: const Text('Go to Replacement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
