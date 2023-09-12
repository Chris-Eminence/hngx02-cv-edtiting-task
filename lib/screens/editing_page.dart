import 'package:flutter/material.dart';

class EditResume extends StatefulWidget {
  const EditResume({super.key});

  @override
  State<EditResume> createState() => _EditResumeState();
}

class _EditResumeState extends State<EditResume> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _slackUserNameController = TextEditingController();
  TextEditingController _githubLinkController = TextEditingController();
  TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              children: [
                TextField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('Name'),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _surnameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('Surname'),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _slackUserNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('Slack Username'),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _githubLinkController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('github link'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: TextField(
                    controller: _bioController,

                    minLines: 1,
                    maxLines: 1000,
                    decoration: const InputDecoration(
                      hintText: ('Bio'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 92),
                    height: 48,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
