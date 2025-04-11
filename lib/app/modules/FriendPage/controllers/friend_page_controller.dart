import 'package:get/get.dart';

class Friend {
  final String id;
  final String name;
  final String imageUrl;
  final String lastMessage;
  final String lastMessageTime;
  final bool isOnline;
  final int unreadCount;

  Friend({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.lastMessage,
    required this.lastMessageTime,
    this.isOnline = false,
    this.unreadCount = 0,
  });
}

class FriendPageController extends GetxController {
  final RxList<Friend> friends = <Friend>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFriends();
  }

  void loadFriends() {
    // Dummy data for demonstration
    friends.addAll([
      Friend(
        id: '1',
        name: 'Gaza',
        imageUrl: 'assets/images/default.png',
        lastMessage: 'Free Palestine',
        lastMessageTime: 'Just Now',
        isOnline: true,
        unreadCount: 1,
      ),
      Friend(
        id: '2',
        name: 'Al Quds',
        imageUrl: 'assets/images/default.png',
        lastMessage: 'Leve Palestina',
        lastMessageTime: '11:56 PM',
      ),
      Friend(
        id: '3',
        name: 'Yafa',
        imageUrl: 'assets/images/default.png',
        lastMessage: 'Free Palestine',
        lastMessageTime: 'Yesterday',
      ),
      Friend(
        id: '4',
        name: 'Haifa',
        imageUrl: 'assets/images/default.png',
        lastMessage: 'Leve Palestina',
        lastMessageTime: '7/10/2023',
        unreadCount: 3,
      ),
    ]);
  }

  void startChat(Friend friend) {
    // TODO: Implement chat functionality
    Get.toNamed('/chat', arguments: friend);
  }

  void sendMoney(Friend friend) {
    // TODO: Implement money transfer
    Get.toNamed('/transfer', arguments: friend);
  }
}
