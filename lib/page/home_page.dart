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
        margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'User actions',
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              'Times Clicked = ${clicks.toString()}',
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              'Random number = ${randomNumber.toString()}',
              style: GoogleFonts.acme(fontSize: 20),
            ),
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
