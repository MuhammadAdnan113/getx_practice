import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Models/Counter.dart';
import 'package:getx_practice/Screens/SecondPage.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  RxInt y = 0.obs;
  void increaseY() => y++;

  @override
  Widget build(BuildContext context) {
    Calculator controller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => Text('X= ${Get.arguments['valuex'] ?? controller.x}'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Obx(
                  () => Text('Y= $y'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.incrementX();
                  },
                  child: const Text('Increment X'),
                ),
                ElevatedButton(
                  onPressed: () {
                    increaseY();
                  },
                  child: const Text('Increment Y'),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Go back'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SecondPage(), arguments: {'valuey': y});
                },
                child: const Text('Send Value Y to Page 2'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
