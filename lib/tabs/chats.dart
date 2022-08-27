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
            hour: '00:14',
          ),
          ListItem(
            title: "Dad",
            subTitle: 'Don/t be late',
            hour: '22:45',
            photo:
                'data:image/jpeg;base64,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',
          ),
          ListItem(
            title: "Bob",
            subTitle: 'I don\'t snap ever ',
            hour: '10:23',
            photo:
                'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          ),
          ListItem(
            title: "Anna",
            subTitle: 'Hello',
            hour: '8:05',
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
  final String hour;
  final String photo;

  const ListItem({Key key, this.title, this.subTitle, this.hour, this.photo})
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
                   // color: Colors.yellow,
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
                Text(hour),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
