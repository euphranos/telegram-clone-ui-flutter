class Message {
  final String message;
  final bool isMe;
  final String sentTime;
  final bool isSeen;
  Message({
    required this.message,
    required this.isMe,
    required this.sentTime,
    required this.isSeen,
  });
}

List<Message> allMessages = [
  Message(message: 'Hi whatsapp!', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Good what are u doing!',
      isMe: false,
      sentTime: '22:29',
      isSeen: true),
  Message(
      message: 'Glad to see u', isMe: true, sentTime: '22:30', isSeen: true),
  Message(
      message: 'Do u playing rust? ',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(message: 'Yes , u ?', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Yes, we can a teammate',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(message: 'Hi whatsapp!', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Good what are u doing!',
      isMe: false,
      sentTime: '22:29',
      isSeen: true),
  Message(
      message: 'Glad to see u', isMe: true, sentTime: '22:30', isSeen: true),
  Message(
      message: 'Do u playing rust? ',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(message: 'Yes , u ?', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Yes, we can a teammate',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(
      message: 'Add me on a steam',
      isMe: true,
      sentTime: '22:28',
      isSeen: false),
  Message(message: 'Hi whatsapp!', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Good what are u doing!',
      isMe: false,
      sentTime: '22:29',
      isSeen: true),
  Message(
      message: 'Glad to see u', isMe: true, sentTime: '22:30', isSeen: true),
  Message(
      message: 'Do u playing rust? ',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(message: 'Yes , u ?', isMe: true, sentTime: '22:28', isSeen: true),
  Message(
      message: 'Yes, we can a teammate',
      isMe: false,
      sentTime: '22:28',
      isSeen: true),
  Message(
      message: 'Add me on a steam',
      isMe: true,
      sentTime: '22:28',
      isSeen: false),
];
