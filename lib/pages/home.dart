// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_clone/util/bubble_stories.dart';
import 'package:insta_clone/util/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people = [
    'Obama',
    'Pinter',
    'Bazso',
    'Biden',
    'Trump',
    'Munkak Istvan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Instagram',
            style: TextStyle(color: Colors.black),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.favorite_border),
              ),
              Icon(Icons.messenger_outline_outlined),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          //storys
          Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                  );
                },
              )),
          //posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
