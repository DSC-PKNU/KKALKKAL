import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int index = 10;

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      // backgroundColor: Colors.indigo[800],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: statusBarHeight),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      child: Text(
                        'Moi Jobs',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '전체',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '지역별',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '추천',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.dehaze,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '게시글',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ReusalbleCard(
                      cardtext: '[부산] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[광주] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[경남] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[서울] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[충북] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[충남] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[인천] 2021 청년지원사업',
                    ),
                    ReusalbleCard(
                      cardtext: '[강원도] 2021 청년지원사업',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '받은 파일',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class ReusalbleCard extends StatelessWidget {
  ReusalbleCard({
    this.cardtext,
  });
  final String cardtext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            '$cardtext',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
