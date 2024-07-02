// import 'package:get/get.dart';
//
// class HomeScreenController extends GetxController {
//   var count = 0.obs;
//   Rx<DateTime> cTime = DateTime.now().obs;
//
//   void increment() {
//     count++;
//   }
//
//   void decrement() {
//     count--;
//   }
//
//   void time() {}
// }

import 'dart:async';

import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var count = 0.obs;
  var cTime = DateTime.now().obs;
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    // Start a timer to update cTime every second
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print('Time Update');
      updateTime();
    });
  }

  @override
  void onClose() {
    // Cancel the timer when the controller is closed
    print('Cancel the timer when the controller is closed');
    _timer.cancel();
    super.onClose();
  }

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  void updateTime() {
    cTime.value = DateTime.now();
  }
}
