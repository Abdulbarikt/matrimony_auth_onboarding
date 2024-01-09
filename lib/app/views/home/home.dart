import 'package:flutter/material.dart';
import 'package:mat_dummy/utils/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: main_color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        height: size.height * 0.25,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: iconColors, borderRadius: BorderRadius.circular(10)),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.menu,
                  color: main_color,
                ),
              ),
              Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                      color: iconColors,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: main_color,
                      ),
                      onPressed: () {},
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
