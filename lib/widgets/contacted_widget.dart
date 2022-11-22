import 'package:flutter/material.dart';

import '../models/user.dart';

class ContactedWidget extends StatelessWidget {
  final Function()? onTap;
  final User user;
  const ContactedWidget({
    Key? key,
    this.onTap,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.profileAvatar),
      ),
      title: Text(user.userName),
      subtitle: Text(
        user.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
