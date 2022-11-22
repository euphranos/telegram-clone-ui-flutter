import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 16,
          children: [
            drawerHeader(context),
            drawerBody(),
          ],
        ),
      ),
    );
  }

  Widget drawerBody() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        bottom: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.people_alt_outlined,
              ),
              title: Text(
                'New Group',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.person_outline,
              ),
              title: Text(
                'Contacts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.call_outlined,
              ),
              title: Text(
                'Calls',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.near_me),
              title: Text(
                'People Nearby',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.archive_sharp,
              ),
              title: Text(
                'Saved Messages',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.settings,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.person_add_outlined,
              ),
              title: Text(
                'Invite Friends',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.question_mark,
              ),
              title: Text(
                'Telegram Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerHeader(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      width: double.infinity,
      color: const Color(0xff527CA2),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 30,
                  child: Text(
                    'Y',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Yusuf',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '+90 500 000 00 00',
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
