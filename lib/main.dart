import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, dynamic> data = {
    'Мои фото': [
      'https://loremflickr.com/1200/1200?random=1',
      'https://loremflickr.com/1200/1200?random=2',
      'https://loremflickr.com/1200/1200?random=3',
      'https://loremflickr.com/1200/1200?random=4',
      'https://loremflickr.com/1200/1200?random=5',
      'https://loremflickr.com/1200/1200?random=6',
      'https://loremflickr.com/1200/1200?random=7',
      'https://loremflickr.com/1200/1200?random=8',
      'https://loremflickr.com/1200/1200?random=9',
      'https://loremflickr.com/1200/1200?random=10',
    ],
    'Галерея': [
      'https://loremflickr.com/1200/1200?random=11',
      'https://loremflickr.com/1200/1200?random=12',
      'https://loremflickr.com/1200/1200?random=13',
      'https://loremflickr.com/1200/1200?random=14',
      'https://loremflickr.com/1200/1200?random=15',
      'https://loremflickr.com/1200/1200?random=16',
      'https://loremflickr.com/1200/1200?random=17',
      'https://loremflickr.com/1200/1200?random=18',
      'https://loremflickr.com/1200/1200?random=19',
      'https://loremflickr.com/1200/1200?random=20',
    ]
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: data.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homework 4.6'),
          bottom: TabBar(tabs: data.keys.map((key) => Tab(text: key)).toList()),
        ),
        body: TabBarView(
          children: data.keys.map((key) {
            return ListView(
              key: PageStorageKey(key),
              children: <Widget>[
                ...data[key].map((e) {
                  return Image.network(e);
                }).toList()
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
