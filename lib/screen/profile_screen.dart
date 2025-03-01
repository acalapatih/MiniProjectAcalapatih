import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 32,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ),
                    const Text(
                      "SA",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                        )
                    )
                  ],
                ),
                const SizedBox.square(dimension: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sam",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    const SizedBox.square(dimension: 5),
                    const Text(
                      "Member Since 21 August 2024",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6F6C6D)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Theme.of(context).colorScheme.onSecondary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary
              ),
            ),
            const SizedBox.square(dimension: 10),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.primary
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    onTap: () {
                      print('Menu Profile ditekan');
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                        Icons.storage,
                        color: Theme.of(context).colorScheme.primary
                    ),
                    title: Text(
                      "Data & Privacy",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    onTap: () {
                      print('Menu Data & Privacy ditekan');
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                        Icons.subscriptions,
                        color: Theme.of(context).colorScheme.primary
                    ),
                    title: Text(
                      "Subcription",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    onTap: () {
                      print('Menu Subscription ditekan');
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                        Icons.lock,
                        color: Theme.of(context).colorScheme.primary
                    ),
                    title: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    onTap: () {
                      print('Menu Password ditekan');
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                        Icons.logout,
                        color: Theme.of(context).colorScheme.primary
                    ),
                    title: Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    onTap: () {
                      print('Menu Sign Out ditekan');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
