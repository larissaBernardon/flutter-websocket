import 'package:flutter/material.dart';
import 'package:flutter_websocket/chat_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final socketChannel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.org'),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ChatPage(
        socketChannel: socketChannel,
      ),
    );
  }
}
