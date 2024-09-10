import 'package:flutter/material.dart';

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 20),
              _buildCategorySection("Kategori"),
              SizedBox(height: 20),
              _buildCategorySection("Kategori"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: 250,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/sample_image.png", // Ganti dengan path gambar Anda
              width: 200,
            ),
          ),
          Positioned(
            left: 15,
            bottom: 10,
            child: Text(
              "Saldo Rp. 5.000.000,-",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 175,
            right: 20,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                  "assets/user.png"), // Ganti dengan path gambar Anda
            ),
          ),
          Positioned(
            top: 6,
            right: 10,
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30.0,
              ),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          Container(
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(8, (index) {
                return Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon${index + 1}.png', // Ganti dengan path gambar Anda
                        width: 50,
                      ),
                      Text(
                        "Item ${index + 1}",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class Constants {
  static const String FirstItem = 'First Item';
  static const String SecondItem = 'Second Item';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('Selected First Item');
  } else if (choice == Constants.SecondItem) {
    print('Selected Second Item');
  } else if (choice == Constants.ThirdItem) {
    print('Selected Third Item');
  }
}
