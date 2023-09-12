import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  String name, surname, slackUsername, githubLink, bio;

  ViewPage(
      {required this.name,
        required this.surname,
      required this.slackUsername,
      required this.githubLink,
      required this.bio});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('Name: ${name}'),
            SizedBox(height: 20,),
            Text('Surname: ${surname}'),
            SizedBox(height: 20,),
            Text('slack username: ${slackUsername}'),
            SizedBox(height: 20,),
            Text('github link: ${githubLink}'),
            SizedBox(height: 20,),
            Text('bio: ${bio}'),
          ],
        )
      ),
    );
  }
}
