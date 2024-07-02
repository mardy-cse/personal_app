import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_app/features/home/presentation/controller/home_screen_controller.dart';
import 'package:personal_app/features/profile/presentation/screen/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() {
                return Text(homeScreenController.count.toString());
              }),
              ElevatedButton(
                  onPressed: () {
                    homeScreenController.increment();
                  },
                  child: Text('Increment')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ProfileScreen());
                  },
                  child: Text('Decrement')),
              Obx(() {
                DateTime currentTime = homeScreenController.cTime.value;
                return Text((homeScreenController.cTime.value).toString());
              }),
            ],
          ),
        ));
  }
}
