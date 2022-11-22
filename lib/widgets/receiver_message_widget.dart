import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

import '../models/fake_message.dart';

class ReceiverMessageWidget extends StatelessWidget {
  final Message message;
  const ReceiverMessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: ClipPath(
          clipper: UpperNipMessageClipper(
            MessageType.RECEIVE,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
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
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        message.sentTime,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
