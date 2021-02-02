import 'package:flutter/material.dart';
import 'package:moijobs/screens/new_post.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Material(
        color: Color(0xFFF5F9FF),
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
          child: Center(
            child: Text(
              '부산\n 수정 중\n2021',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A202C),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return NewPost();
                },
              ),
            );
            print('pressed');
          },
        ),
      ),
    );
  }
}
