import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Models/Counter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
                const SizedBox(
                  width: 10,
                ),
                Obx(
                  () => Text('${Get.arguments['valuey']}'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Increment X'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.arguments['valuey'] += 1;
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
                onPressed: () {},
                child: const Text('Other Tasks'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
