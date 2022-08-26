import 'dart:html';

import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          ListItem(
            title: "Mom",
            subTitle: 'Eat your food',
            hors: '13:10',
          ),
          ListItem(
            title: "Dad",
            subTitle: 'Hello',
            hors: '22:45',
          ),
          ListItem(
            title: "Dad",
            subTitle: 'Hello',
            hors: '22:45',
          ),
          ListItem(
            title: "Anna",
            subTitle: 'Hello',
            hors: '22:45',
            photo:
                'https://m.media-amazon.com/images/M/MV5BZDk4ZmFkZjMtMTQyMC00ZDZiLWJiZjQtYjg2NDcwYzJmZjMwXkEyXkFqcGdeQXVyMTA4ODcyMTYx._V1_.jpg',
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String hors;
  final String photo;

  const ListItem({Key key, this.title, this.subTitle, this.hors, this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(color: Colors.black, width: 0.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: NetworkImage(
                  photo != null
                      ? photo
                      : 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //  color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(subTitle),
                    ],
                  ),
                ),
                Text(hors),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
