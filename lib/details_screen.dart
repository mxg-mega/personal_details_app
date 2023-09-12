import 'package:flutter/material.dart';
import 'package:personal_details_app/web_screen.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() {
    return _DetailsState();
  }
}

class _DetailsState extends State<Details> {
  Widget screen = const DetailsScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Details',
      debugShowCheckedModeBanner: false,
      routes: {
        '/webview': (context) => const WebPage(),
      },
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: screen,
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            // Circle avatar gives my Profile picture the its shape
            radius: 60.0,
            backgroundImage: AssetImage('images/profile_image.jpg'),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            // the card widget helps to make it Obvious for the user to identify an information
            // A great tool since the object of the app is to display details
            color: Colors.white,
            margin:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: ListTile(
              leading: Image.asset(
                'images/icons8-slack-100.png',
                scale: 3.3,
              ),
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
                child: Text(
                  'Muhammad Aliyu Abubakar',
                  style: TextStyle(
                    color: Colors.blueGrey.shade600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/webview');
            },
            style: ElevatedButton.styleFrom(
              // This section is for Styling the Button

              // The minimum and maximum sizes ensure that it changes size according to screen width
              minimumSize: const Size(150, 30),
              maximumSize: const Size(300, 60),
              backgroundColor: Colors.blueGrey.shade400,
              shape: RoundedRectangleBorder(
                // this is to style the botton to have the nice blunt end/edges
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text("Open Github"),
          ),
        ],
      ),
    );
  }
}
