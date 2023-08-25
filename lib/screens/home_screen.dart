import 'package:farin_app/screens/item_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int categoriesIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> categories = <String>[
    'Most sold',
    'Chair',
    'Table',
    'Cupboard',
    'Other',
    'Accesories'
  ];

  final List<Widget> categoriesWidget = <Widget>[
    mostSoldWidget(),
    chairWidget(),
    tableWidget(),
    cupboardWidget(),
    otherWidget(),
    accesoriesWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Search and Explore',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Find your item',
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 10,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(Icons.search_sharp, size: 40),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SizedBox(
                height: 40,
                child: new ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new ElevatedButton(
                        onPressed: () {
                          setState(() {
                            categoriesIndex = index;
                          });
                        },
                        child: Text(categories[index]));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: categoriesWidget[categoriesIndex],
            )
          ],
        ),
      ),
    );
  }
}

Widget mostSoldWidget() {
  return Container(
    child: ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ItemScreen()),
                  );
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                            height: 130, image: AssetImage('images/jawir.jpg')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Jawir",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "5000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Icon(Icons.trolley))
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(height: 130, image: AssetImage('images/jawir.jpg')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Jawir",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: Icon(Icons.trolley))
                        ],
                      ),
                    ],
                  ))
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 3),
  );
}

Widget chairWidget() {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            child: Text("Chair"),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}

Widget tableWidget() {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            child: Text("Table"),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}

Widget cupboardWidget() {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            child: Text("cupboard"),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}

Widget otherWidget() {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            child: Text("Other"),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}

Widget accesoriesWidget() {
  return Column(
    children: [
      Row(
        children: [
          TextButton(
            child: Text("accesories"),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}
