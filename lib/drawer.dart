import 'package:flutter/material.dart';

class DrawerScreenPage extends StatefulWidget {
  const DrawerScreenPage({Key? key}) : super(key: key);

  @override
  _DrawerScreenPageState createState() => _DrawerScreenPageState();
}

class _DrawerScreenPageState extends State<DrawerScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Fauzan Abdillah'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            accountEmail: Text('fauzan.abdillah2705@gmail.com'),
          ),
          DrawerListTile(
            iconData: Icons.filter_1,
            title: 'Day 1 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day1-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_1,
            title: 'Day 1 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day1-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_2,
            title: 'Day 2 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day2-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_2,
            title: 'Day 2 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day2-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_3,
            title: 'Day 3 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day3-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_3,
            title: 'Day 3 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day3-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_4,
            title: 'Day 4 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day4-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_4,
            title: 'Day 4 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day4-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_5,
            title: 'Day 5 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day5-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_5,
            title: 'Day 5 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day5-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_6,
            title: 'Day 6 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day6-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_6,
            title: 'Day 6 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day6-second');
            },
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.filter_7,
            title: 'Day 7 - First',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day7-first');
            },
          ),
          DrawerListTile(
            iconData: Icons.filter_7,
            title: 'Day 7 - Second',
            onTilePressed: () {
              Navigator.pushNamed(context, '/day7-second');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile({
    Key? key,
    this.iconData,
    this.title,
    this.onTilePressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title.toString(),
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
