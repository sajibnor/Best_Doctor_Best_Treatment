import 'package:flutter/material.dart';

import 'savar.dart';

class AreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext contex, int index) => InkWell(
                splashColor: Colors.blue,
                child: Entryitem(data[index]),
                onTap: () {
                  if (true) {
                    print(index);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => AreName()));
                  }
                },
              )),
    );
  }
}

class Entry {
  final String title;
  int s;

  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

List data = [
  // 1st row
  Entry('savar', [
    Entry('dipok', <Entry>[
      Entry('thanastane'),
      Entry('thanastane'),
      Entry('thanastane'),
    ]),
    Entry('mirja'),
    Entry('mirja'),
    Entry('mirj'),
  ]),
  // 2st row
  Entry('dnmondy', <Entry>[
    Entry('labaid'),
    Entry('labaid'),
    Entry('labaid'),
    Entry('labaid'),
  ]),
  // 3rd row
  Entry('uttara', <Entry>[
    Entry("MJCH"),
    Entry("MJCH"),
    Entry("MJCH", <Entry>[
      Entry("mjch2"),
      Entry("mjch2"),
      Entry("mjch2"),
      Entry("mjch2"),
    ]),
  ])
];

class Entryitem extends StatelessWidget {
  const Entryitem(this.entry);
  final Entry entry;

  Widget _buildTitles(Entry root) {
    Padding(padding: EdgeInsets.all(0));
    SizedBox(
      width: 2,
      height: 2,
    );

    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
        expandedAlignment: Alignment.center,
        expandedCrossAxisAlignment: CrossAxisAlignment.center,
        key: PageStorageKey<Entry>(root),
        title: Text(root.title),
        children: root.children.map<Widget>(_buildTitles).toList());
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return _buildTitles(entry);
  }
}
