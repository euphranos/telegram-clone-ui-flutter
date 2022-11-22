class User {
  final String userName;
  final String profileAvatar;
  final String lastSeen;
  final String lastMessage;
  User({
    required this.userName,
    required this.profileAvatar,
    required this.lastSeen,
    required this.lastMessage,
  });
}

List<User> allUsers = [
  User(
    userName: 'Jurica Guetta',
    profileAvatar:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    lastSeen: 'last seen recently',
    lastMessage: 'See u later',
  ),
  User(
      userName: 'Joseph Gonzales',
      lastMessage: 'Okey i got',
      profileAvatar:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      lastSeen: 'last seen recently'),
  User(
      userName: 'Jurica Guetta',
      lastMessage: 'no',
      profileAvatar:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      lastSeen: 'last seen recently'),
  User(
    userName: 'Joseph Gonzales',
    profileAvatar:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    lastSeen: 'last seen recently',
    lastMessage: 'i will fix it',
  ),
];
