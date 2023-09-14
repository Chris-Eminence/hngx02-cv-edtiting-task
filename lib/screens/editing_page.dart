import 'package:flutter/material.dart';
import 'package:hngx_cv_editor/screens/cv_view_page.dart';

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
  TextEditingController _educationController = TextEditingController();
  TextEditingController _bioController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameController.dispose();
    _surnameController.dispose();
    _slackUserNameController.dispose();
    _githubLinkController.dispose();
    _bioController.dispose();
    _educationController.dispose();
    super.dispose();
  }

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
                  style: TextStyle(color: Color(0xFF0983C1),),

                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ), // Set the border color when the field is focused
                    ),
                    labelText: ('Name'),
                    labelStyle: TextStyle(
                      color: Color(0xFF0983C1),
                    ),
                  ),
                  cursorColor: Color(0xFF0983C1),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: Color(0xFF0983C1),),
                  controller: _surnameController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ), // Set the border color when the field is focused
                    ),
                    labelText: ('Surname'),
                    labelStyle: TextStyle(
                      color: Color(0xFF0983C1),
                    ),
                  ),
                  cursorColor: Color(0xFF0983C1),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: Color(0xFF0983C1),),

                  controller: _slackUserNameController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ), // Set the border color when the field is focused
                    ),
                    labelText: ('Slack username'),
                    labelStyle: TextStyle(
                      color: Color(0xFF0983C1),
                    ),
                  ),
                  cursorColor: Color(0xFF0983C1),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: Color(0xFF0983C1),),
                  controller: _githubLinkController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ), // Set the border color when the field is focused
                    ),
                    labelText: ('github link'),
                    labelStyle: TextStyle(
                      color: Color(0xFF0983C1),
                    ),
                  ),
                  cursorColor: Color(0xFF0983C1),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: Color(0xFF0983C1),),
                  controller: _educationController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0983C1),
                      ), // Set the border color when the field is focused
                    ),
                    labelText: ('Education'),
                    labelStyle: TextStyle(
                      color: Color(0xFF0983C1),
                    ),
                  ),
                  cursorColor: Color(0xFF0983C1),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Color(0xFF0983C1),
                      width: 0.7, // Border width
                    ),
                  ),
                  child: TextField(
                    controller: _bioController,
                    minLines: 1,
                    maxLines: 1000,
                    style: TextStyle(color: Color(0xFF0983C1),),
                    decoration: const InputDecoration(
                      hintText: ('Bio'),
                      hintStyle: TextStyle(
                        color: Color(0xFF0983C1),
                      ),
                      border: InputBorder.none,
                    ),
                    cursorColor: Color(0xFF0983C1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => ViewPage(
                          name: _firstNameController.text,
                          surnmae: _surnameController.text,
                          slack_username: _slackUserNameController.text,
                          github_link: _githubLinkController.text,
                          education: _educationController.text,
                          bio: _bioController.text,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF01C2ED),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Edit ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
