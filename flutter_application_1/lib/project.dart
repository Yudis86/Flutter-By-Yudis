import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> _products = [
    {
      'title': 'Kemeja',
      'price': '\$10.00',
      'image': 'https://cf.shopee.co.id/file/717c514711447c57dcbb09c4772b3039'
    },
    {
      'title': 'Jacket Gopcore',
      'price': '\$30.00',
      'image':
          'https://www.techwearnow.com/cdn/shop/products/gorpcorejacket-5_1445x.png?v=1678764438'
    },
    {
      'title': 'Cardigan',
      'price': '\$20.00',
      'image':
          'https://down-id.img.susercontent.com/file/8bcba8ab6efdaf16c1da9ee8e4640fee'
    },
    {
      'title': 'jacket Sherpa',
      'price': '\$25.00',
      'image':
          'https://tse1.mm.bing.net/th?id=OIP.5DaCxwWUa3xBlbNjIwl7JAAAAA&pid=Api&P=0&h=180'
    },
    // Tambahkan produk lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1), // Warna latar belakang
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.75, // Rasio aspek kartu produk
          ),
          itemCount: _products.length,
          itemBuilder: (context, index) {
            final product = _products[index];
            return Card(
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      product['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product['title']!,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      product['price']!,
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
