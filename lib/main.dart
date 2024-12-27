import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Project To-Do List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List todo = [
    ['Apple', false],
    ['Pineapple', false],
    ['Kiwi', false],
    ['Lemon', false],
    ['Mango', false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent.shade100,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Apple(
                                data: index.toString(),
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      todo[index][0],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              );
            }));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class Apple extends StatelessWidget {
  final String data;

  const Apple({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(175, 177, 147, 232),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("To-Do"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            name(data),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
  // This trailing comma makes auto-formatting nicer for build methods.
}

String name(data) {
  switch (data) {
    case "0":
      return "Apple (Malus domestica) is a popular fruit-bearing tree species belonging to the Rosaceae family. Renowned for its delicious and nutritious fruit, the apple has been cultivated for thousands of years and holds significant cultural, economic, and nutritional value worldwide.";
      break;

    case "1":
      return "The pineapple (Ananas comosus) is a tropical fruit that is widely loved for its sweet and tangy flavor. It is a member of the Bromeliaceae family and is native to South America, particularly regions like Brazil and Paraguay. Pineapple is now cultivated in tropical and subtropical areas worldwide, including Hawaii, the Philippines, and Thailand.";
      break;

    case "2":
      return "The kiwi is a small, nutrient-dense fruit that is well-loved for its unique flavor, vibrant green color, and numerous health benefits. Known scientifically as Actinidia deliciosa, the kiwi is native to China, where it was originally referred to as the Chinese gooseberry It was later renamed kiwi after the national bird of New Zealand due to its resemblance in shape and fuzziness.";
      break;

    case "3":
      return "A lemon is a small to medium-sized citrus fruit that is highly valued for its vibrant flavor, versatility, and numerous uses. It is scientifically classified as Citrus limon and belongs to the Rutaceae family. Lemons are thought to have originated in Asia, specifically in regions such as Northeast India, northern Myanmar, or China, and are now cultivated worldwide in tropical and subtropical climates.";
      break;

    case "4":
      return "The mango is a tropical stone fruit belonging to the genus Mangifera, consisting of numerous species of tropical fruiting trees. The most commonly consumed mango species is Mangifera indica. Known as the King of Fruits mangoes are prized for their sweet, juicy, and aromatic flavor. They are native to South Asia but are now grown in many tropical and subtropical regions worldwide.";
      break;

    default:
      return "Invalid";
      break;
  }
}
