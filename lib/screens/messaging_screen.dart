import 'package:flutter/material.dart';

import 'package:crud_exercises/models/fake_message.dart';
import 'package:crud_exercises/widgets/custom_appbar.dart';
import 'package:crud_exercises/widgets/message_widget.dart';
import 'package:crud_exercises/widgets/receiver_message_widget.dart';
import 'package:crud_exercises/widgets/send_widget.dart';

import '../models/user.dart';

class MessagingScreen extends StatelessWidget {
  final User user;
  const MessagingScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(user: user),
      ),
      body: Container(
        height: screenHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/telegram_background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: allMessages.length,
                primary: false,
                itemBuilder: (context, index) {
                  Message message = allMessages[index];
                  if (message.isMe) {
                    return MessageWidget(message: message);
                  } else {
                    return ReceiverMessageWidget(message: message);
                  }
                },
              ),
            ),
            const SendWidget(),
          ],
        ),
      ),
    );
  }
}
