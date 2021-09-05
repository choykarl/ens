import 'package:ens/page/select_page_day/select_page_day_page.dart';
import 'package:ens/page/word_list/word_list_page.dart';
import 'package:ens/word_manager/word_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WordManager wordManager = WordManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return WordListPage();
                  },
                ));
              },
              child: Container(
                alignment: Alignment.center,
                height: 44,
                child: Text("单词页面"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return SelectPageOrDayPage();
                  },
                ));
              },
              child: Container(
                alignment: Alignment.center,
                height: 44,
                child: Text("背诵页面"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}