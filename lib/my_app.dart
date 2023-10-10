import 'package:trilhapp/imports.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.pacificoTextTheme()),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
