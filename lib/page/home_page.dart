import 'package:trilhapp/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;
  var clicks = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('Call build');
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Random',
        //style: GoogleFonts.pacifico(),
      )),
      body: Container(
        //color: Colors.amber,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.cyan,
              child: Text(
                'User actions',
                style: GoogleFonts.acme(fontSize: 20),
              ),
            )),
            Expanded(
              flex: 3,
                child: Container(
              width: double.infinity,
              color: Colors.orange,
              child: Text(
                'Times Clicked = ${clicks.toString()}',
                style: GoogleFonts.acme(fontSize: 20),
              ),
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.indigo,
              child: Text(
                'Random number = ${randomNumber.toString()}',
                style: GoogleFonts.acme(fontSize: 20),
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                          color: Colors.red,
                          child: Text('Nome:',
                              style: GoogleFonts.acme(fontSize: 20)))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.green,
                          child: Text('Alex Jarschel',
                              style: GoogleFonts.acme(fontSize: 20)))),
                  Expanded(
                      child: Container(
                          color: Colors.blue,
                          child: Text('1/5',
                              style: GoogleFonts.acme(fontSize: 20)))),
                ],
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () {
          setState(() {
            randomNumber = RandomNumberGenerator.generateNumber(100);
            clicks = clicks + 1;
          });
        },
      ),
    );
  }
}
