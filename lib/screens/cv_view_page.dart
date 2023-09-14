import 'package:flutter/material.dart';
import 'package:hngx_cv_editor/screens/editing_page.dart';

class ViewPage extends StatelessWidget {
  String name;
  String surnmae;
  String slack_username;
  String github_link;
  String education;
  String bio;

  ViewPage({
    this.name = 'Emediong',
    this.surnmae = 'Christopher',
    this.slack_username = 'Eminence',
    this.github_link = 'github.com/chris-eminence',
    this.education = 'Akwa Ibom State University',
    this.bio = """I am an industrious, motivated, and highly productive employee. 
    
Over recent years I have developed diverse qualities and skills that I believe will add value to your team as a mobile developer.

I am a strong communicator and a supportive collaborator, and my problem-solving capabilities mean 

I will always take ownership of difficult challenges whenever they occur, I am ready to take up this position with your company, and I see it as an opportunity for me to work alongside other talented and like-minded professionals whom all want to achieve great things for their employer
    """,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Image.asset('images/name_vector.png'),
                    const SizedBox(width: 7),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Color(0xFF01C2ED),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  surnmae,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0983C1),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 0.7,
                  color: Colors.blueAccent,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset('images/slack_vector.png'),
                    const SizedBox(width: 10),
                    Text(
                      slack_username,
                      style: const TextStyle(
                        color: Color(0xFF0983C1),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('images/github_vector.png'),
                    const SizedBox(width: 10),
                    Text(
                      github_link,
                      style: const TextStyle(
                        color: Color(0xFF0983C1),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(Icons.school, color: Color(0xFF0983C1), size: 18,),
                    const SizedBox(width: 10),
                    Text(
                      education,
                      style: const TextStyle(
                        color: Color(0xFF0983C1),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,

                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white, // Container background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 10, // Blur radius
                        offset: const Offset(0, 3), // Offset of the shadow
                      ),
                    ],
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF01C2ED),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        bio,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0983C1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => EditResume(),
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
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
