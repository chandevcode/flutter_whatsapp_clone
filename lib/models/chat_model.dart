class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({ required  this.name,required this.message,required this.time,required this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/women/71.jpg'
  ),ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/women/22.jpg'
  ),ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/women/81.jpg'
  ),ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/women/6.jpg'
  ),ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/women/31.jpg'
  ),ChatModel(
    name: 'Mike',
    message: 'Hey I am mike , nice to meet you',
    time: '5:30 PM',
    avatarUrl: 'https://randomuser.me/api/portraits/men/44.jpg'
  ),
];