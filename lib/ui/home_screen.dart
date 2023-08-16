import 'package:custom_paint/ui/pages/emoji/bad.dart';
import 'package:custom_paint/ui/pages/emoji/emoji1.dart';
import 'package:custom_paint/ui/pages/emoji/good.dart';
import 'package:custom_paint/ui/pages/emoji/normal.dart';
import 'package:custom_paint/ui/pages/emoji/sad.dart';
import 'package:custom_paint/ui/pages/snowman.dart';
import 'package:custom_paint/ui/pages/uzb_flag.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<Widget> pages = [
    const Example1(),
    const Example2(),
    const Emoji1(),
    const Emoji2(),
    const Emoji3(),
    const Emoji4(),
    const Emoji5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Paint'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('Example ${index + 1}'),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      )),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: pages.length));
  }
}
