// ignore: file_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../UTILS/CONSTANTS/cust_colors.dart';
import '../UTILS/THEMES/cust_text_theme.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}

buildBody(context) {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        title: const Text('helloAK'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.notification)),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: appColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Color',
                        style: ttsTLarge(context).copyWith(color: white),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'hello',
                            style: ttsHLSmall(context).copyWith(color: white),
                          ))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: primaryColor,
                  child: Text(
                    'Primiry Color',
                    style: ttsTLarge(context).copyWith(color: white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: secondaryColor,
                  child: Text(
                    'Secondary Color',
                    style: ttsTLarge(context).copyWith(color: white),
                  ),
                ),
                Text("Hello AK", style: ttsLSmall(context)),
                Text("Hello AK", style: ttsLMedium(context)),
                Text("Hello AK", style: ttsLLarge(context)),
                Container(
                  height: 50,
                  color: green,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text("Hello AK", style: ttsBLarge(context)),
                ),
                Text("Hello AK", style: ttsBSmall(context)),
                Text("Hello AK", style: ttsBMedium(context)),
                Text("Hello AK", style: ttsBLarge(context)),
                Container(
                  height: 50,
                  color: dgreen,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text("Hello AK", style: ttsTLarge(context)),
                ),
                Text("Hello AK", style: ttsTSmall(context)),
                Text("Hello AK", style: ttsTMedium(context)),
                Text("Hello AK", style: ttsTLarge(context)),
                Container(
                  height: 50,
                  color: pink,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text("Hello AK", style: ttsHLLarge(context)),
                ),
                Text("Hello AK", style: ttsHLSmall(context)),
                Text("Hello AK", style: ttsHLMedium(context)),
                Text("Hello AK", style: ttsHLLarge(context)),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: blue,
                  child: Text("Hello AK", style: ttsHLLarge(context)),
                ),
                Text("Hello AK", style: ttsDSmall(context)),
                Text("Hello AK", style: ttsDMedium(context)),
                Text("Hello AK", style: ttsDLarge(context)),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: yellow,
                  alignment: Alignment.center,
                  child: Text("Hello AK", style: ttsDLarge(context)),
                ),
                const SizedBox(
                  height: 50,
                )
              ]),
        ),
      ),
    ),
  );
}
