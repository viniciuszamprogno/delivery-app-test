import 'ProductListViewPage.dart';
import 'ShoppingCartPage.dart';
import 'companies.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<CompaniesDataModel> empresas = [
      CompaniesDataModel(
          name: 'Burguer King', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Burguer Dog', description: 'Fast food - Burguer'),
      CompaniesDataModel(name: 'KSF Food', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Super Burguer', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Supermercado Guadalajara', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Mercadão Municipal', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Disk Entregas Gás e Água', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Farmácia Popular', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Disk Auto Carros Peças', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Restaurante Universitário',
          description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Espetinhos do Zeca', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Burguer Dog', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Delícias Mineiras', description: 'Fast food - Burguer'),
      CompaniesDataModel(
          name: 'Burguer Queen', description: 'Fast food - Burguer'),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('lib/assets/menu.png'),
                      SizedBox(height: 20),
                      Image.asset('lib/assets/location.png'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('lib/assets/user.png'),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ShoppingCartPage(),
                            ),
                          );
                        },
                        child: Image.asset('lib/assets/bag.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 20.0,
                      ),
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          prefixIcon:
                              Image.asset('lib/assets/search-normal.png'),
                          filled: true,
                          fillColor: Color.fromARGB(255, 233, 230, 230),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 4,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Image.asset('lib/assets/filter.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Empresas",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 90, 11, 104),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0),
                ),
                Text(
                  "Ver todos",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.70,
                  ),
                  itemCount: empresas.length,
                  itemBuilder: (BuildContext context, int index) {
                    final empresa = empresas[index];

                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductListViewPage(
                              empresa: empresa,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset('lib/assets/enterprise-image.png'),
                          Text(
                            empresa.name.toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 108, 27, 122),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            empresa.description.toString(),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
