import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: MyStatefulWidget()
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _listIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.check_box_outline_blank),
          title: Text('Item $index',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              ),),
          selected: index == _listIndex,
          onTap: () {
            setState(() {
              _listIndex = index;
            });
          },
        );
      },
    );
  }
}