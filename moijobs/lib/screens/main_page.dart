import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const inActiveiconColour = Color(0xFFCEDAF6);
const activeiconColour = Color(0xFF209FA6);

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color homeiconColour = activeiconColour;
  Color fileiconColour = inActiveiconColour;
  Color profileiconColour = inActiveiconColour;
  Color settingiconColour = inActiveiconColour;

  void updateColour(int category) {
    if (category == 1) {
      homeiconColour = activeiconColour;
      fileiconColour = inActiveiconColour;
      profileiconColour = inActiveiconColour;
      settingiconColour = inActiveiconColour;
    } else if (category == 2) {
      homeiconColour = inActiveiconColour;
      fileiconColour = activeiconColour;
      profileiconColour = inActiveiconColour;
      settingiconColour = inActiveiconColour;
    } else if (category == 3) {
      homeiconColour = inActiveiconColour;
      fileiconColour = inActiveiconColour;
      profileiconColour = activeiconColour;
      settingiconColour = inActiveiconColour;
    } else if (category == 4) {
      homeiconColour = inActiveiconColour;
      fileiconColour = inActiveiconColour;
      profileiconColour = inActiveiconColour;
      settingiconColour = activeiconColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF209FA6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: statusBarHeight),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: Icon(null),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'MoiJobs',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A202C),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5.0,
                        color: Color(0xFFF5F9FF),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notifications_none,
                              color: Color(0xFF1A202C),
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
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 35,
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF7FAFF),
                            hintText: '검색',
                            hintStyle: TextStyle(
                                fontSize: 20, color: Color(0xFFCEDAF6)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                child: Text(
                  '게시글',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                child: FlatButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    print('pressed');
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                  ReusableCard(
                    text: '부산\n 수정 중\n2021',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        updateColour(1);
                        print('pressed');
                      });
                    },
                    child: IconContent(
                      topicon: Icons.home_filled,
                      bottomicon: Icons.arrow_drop_up_rounded,
                      colour: homeiconColour,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        updateColour(2);
                        print('pressed');
                      });
                    },
                    child: IconContent(
                      topicon: Icons.folder,
                      bottomicon: Icons.arrow_drop_up_rounded,
                      colour: fileiconColour,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        updateColour(3);
                        print('pressed');
                      });
                    },
                    child: IconContent(
                      topicon: Icons.person_rounded,
                      bottomicon: Icons.arrow_drop_up_rounded,
                      colour: profileiconColour,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        updateColour(4);
                        print('pressed');
                      });
                    },
                    child: IconContent(
                      topicon: Icons.settings,
                      bottomicon: Icons.arrow_drop_up_rounded,
                      colour: settingiconColour,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
