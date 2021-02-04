import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'new_post.dart';


Future <List<Post>> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  if(response.statusCode == 200){
    List list = jsonDecode(response.body);
    var postList = list.map((element) => Post.fromJson(element)).toList();
    return postList;
  }
  else{
    throw Exception('Failed to load post');
  }
}

class Post{
  final String region;
  final String city;
  final String title;
  final String link;

  Post({this.region, this.city, this.title, this.link});

  factory Post.fromJson(Map<String,dynamic> json){
    return Post(
      region: json['region'],
      city: json['city'],
      title: json['title'],
      link: json['link'],
    );
  }
}

class ReusableCard extends StatefulWidget {
  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  Future<List<Post>> postList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postList = fetchPost();
    print(postList);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: FutureBuilder<List<Post>>(
              future: postList,
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index){
                      Post post = snapshot.data[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Row(children: [Text('[${post.region}]'), Text(' [${post.city}]')],),
                              subtitle: Text(post.title),
                              // onTap: (){
                              //   Navigator.push(
                              //       context, MaterialPageRoute(builder: (context) => NewPost())
                              //   );
                              // },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }
                return Center(child: CircularProgressIndicator());
              },
            )
        ),
      ),
    );
  }
}

