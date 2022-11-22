import 'dart:ui';

import 'package:crud_exercises/models/user.dart';
import 'package:crud_exercises/screens/messaging_screen.dart';
import 'package:crud_exercises/widgets/contact_widget.dart';
import 'package:crud_exercises/widgets/contacted_widget.dart';
import 'package:crud_exercises/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff527CA2),
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListView.builder(
                  itemCount: allUsers.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return ContactedWidget(
                      user: allUsers[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MessagingScreen(user: allUsers[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Your Contacts on Telegram',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff527CA2),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: allUsers.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return ContactWidget(
                          user: allUsers[index],
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MessagingScreen(user: allUsers[index]),
                                ));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
