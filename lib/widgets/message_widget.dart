import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

import '../models/fake_message.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  const MessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.SEND),
          child: Card(
            color: const Color(0xffE3FFCA),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: ClipPath(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 30,
                      top: 5,
                      bottom: 20,
                    ),
                    child: Text(
                      message.message,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 3,
                    child: Row(
                      children: [
                        Text(
                          message.sentTime,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.done_all,
                          size: 18,
                          color: message.isMe && message.isSeen
                              ? Colors.blue
                              : Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
