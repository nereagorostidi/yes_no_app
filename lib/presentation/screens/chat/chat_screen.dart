import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'data:image/png;base64,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'),
          ),
        ),
        title: const Text('Papi <3'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMesssageBubble()
                    : const HisMessageBubble();
              },
            )),
            //caja de texto
            const MessageFieldBox(),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
