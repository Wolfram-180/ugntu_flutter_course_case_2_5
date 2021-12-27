import 'package:flutter/material.dart';

import 'data/user_dummy_data.dart';
import 'model/user.dart';

void main() {
  runApp(MyApp(Users_list));
}

class MyApp extends StatefulWidget {
  final List<User> _users;

  MyApp(this._users);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const title = 'Users';

    Map<int, dynamic> _users_data = widget._users.asMap();

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _users_data.length,
          itemBuilder: (context, index) {
            String name = _users_data[index].name;
            String phone = _users_data[index].phone;
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Имя: $name'),
              subtitle: Text('Телефон: $phone'),
              onTap: () {
                setState(() {});
              },
            );
          },
        ),
      ),
    );
  }
}
