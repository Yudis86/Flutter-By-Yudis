import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/date_widget.dart';
import 'package:flutter_application_1/image_widget.dart';
import 'package:flutter_application_1/input_selection.dart';
import 'dialog.dart';

class ScafflodWidget extends StatelessWidget {
  const ScafflodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample code'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          Text('PNLoss'),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        backgroundColor: Color.fromRGBO(189, 233, 255, 1),
        foregroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "NGODING PUSING",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          InputSelection(),
          DialogWidget(),
          DateWidget(title: "kalender")
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_sharp),
            label: "user",
          ),
        ],
        backgroundColor: Color.fromRGBO(189, 233, 255, 1),
      ),
    );
  }
}
