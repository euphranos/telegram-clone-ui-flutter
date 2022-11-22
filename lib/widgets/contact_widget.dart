import 'package:flutter/material.dart';

import '../models/user.dart';

class ContactWidget extends StatelessWidget {
  final User user;
  final Function()? onTap;
  const ContactWidget({
    Key? key,
    required this.user,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          user.profileAvatar,
        ),
      ),
      title: Text(user.userName),
      subtitle: Text(user.lastSeen),
    );
  }
}
