import 'package:dshfghjdsg2/tabs/calls.dart';
import 'package:dshfghjdsg2/tabs/chats.dart';
import 'package:dshfghjdsg2/tabs/photo_camera.dart';
import 'package:dshfghjdsg2/tabs/status.dart';
import 'package:flutter/material.dart';

final Color primaryColor = Color.fromRGBO(38, 92, 76, 1);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              splashRadius: 30,
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              splashRadius: 30,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_see)),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
          title: Text('WhatsApp'),
        ),
        body: TabBarView(
          children: [
            PhotoCamera(),
            ChatsTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.speaker_notes),
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
