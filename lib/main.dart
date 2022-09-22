import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Progress bar custum painter',
      home: MyHomePage(title: 'Progress bar custum painter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.branding_watermark,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF1d3b2a),
      ), */
      body: SafeArea(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Flexible(
                flex: 4,
                child: Placeholder(
                  color: Colors.blue,
                ),
              ),
              const Flexible(
                flex: 7,
                child: Placeholder(
                  color: Colors.black,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: const Color(0xFF1d3b2a),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF809e00),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: Row(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            width: 10,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFd3b2a),
                              shape: StadiumBorder(),
                            ),
                            child: Center(
                              child: Text(
                                "\$150",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
