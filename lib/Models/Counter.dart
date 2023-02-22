import 'package:get/get.dart';

class Calculator extends GetxController {
  RxInt _x = 0.obs;

  RxInt get x => _x;

  void incrementX() => _x++;
  void decrementX() => _x--;
}
