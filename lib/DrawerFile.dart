import 'package:flutter/material.dart';
import 'NewPage.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // DrawerHeader(child: Text('Ahmer')),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
            ),
            accountName: Text('Ahmer Iqbal'),
            accountEmail: Text('ahmer5253@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text('A'),
                backgroundColor: Colors.white,
              )
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text('New Page'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NextPage()));
            },
            // enabled: false,
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment Methods'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Bug'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {
                  Navigator.of(context).pop();
                  print('Pressed');
                },
                // enabled: false,
                selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
