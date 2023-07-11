import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [
    "Hi, Welcome to @MBilalCodes. How are you?",
    "I'm good."
  ];
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 234, 234),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chat UI by @Mbilalcodes",
                    style: GoogleFonts.acme(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      if (index % 2 != 0) Expanded(flex: 1, child: Container()),
                      if (index % 2 == 0)
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.person_3,
                              size: 30,
                              color: Color.fromARGB(255, 82, 197, 255)),
                        ),
                      Expanded(
                        flex: 2,
                        child: StatefulBuilder(
                          builder:
                              ((BuildContext context, StateSetter setState) {
                            return Card(
                              color: index % 2 == 0
                                  ? const Color.fromARGB(255, 163, 224, 255)
                                  : const Color.fromARGB(255, 255, 172, 172),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  messages[index],
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      if (index % 2 != 0)
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person_3,
                            size: 30,
                            color: Color.fromARGB(255, 244, 123, 123),
                          ),
                        ),
                      if (index % 2 == 0) Expanded(flex: 1, child: Container()),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                          hintText: "Enter message",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  enableFeedback: true,
                  onPressed: () {
                    messages.insert(0, messageController.text);
                    messageController.clear();

                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.send,
                    size: 40,
                    color: Color.fromARGB(255, 123, 123, 123),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
