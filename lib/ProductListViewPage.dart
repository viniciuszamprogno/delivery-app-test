import 'package:flutter/material.dart';

import 'companies.dart';

class ProductListViewPage extends StatelessWidget {
  final CompaniesDataModel empresa;

  ProductListViewPage({required this.empresa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 180.0,
              pinned: true,
              floating: false,
              flexibleSpace: Stack(
                children: [
                  Image.asset(
                    'lib/assets/cover-enterprise.png',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 35,
                    right: 16,
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/assets/star.png',
                          width: 32,
                          height: 32,
                        ),
                        SizedBox(width: 16),
                        Image.asset(
                          'lib/assets/search-normal.png',
                          width: 32,
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Text(
                  '${empresa.name}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 189, 4, 65),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 15,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/percent.png',
                      width: 32,
                      height: 32,
                    ),
                    Text(
                      '15% off',
                      style: TextStyle(color: Color.fromARGB(255, 189, 4, 65)),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      'lib/assets/timer.png',
                      width: 32,
                      height: 32,
                    ),
                    Text(
                      '40 a 60 MIN',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 15,
                ),
                child: Text(
                  'Produtos',
                  style: TextStyle(
                    color: Color.fromARGB(255, 71, 1, 83),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 7,
                        child: ListTile(
                          tileColor: Color.fromARGB(255, 235, 233, 233),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/assets/Coin.png',
                                    width: 16,
                                    height: 16,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '15% DE CASHBACK',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Frango Frito                          \$21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red,
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Image.asset(
                                      'lib/assets/Plus.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Text('Fast Food - Burguer'),
                          onTap: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
