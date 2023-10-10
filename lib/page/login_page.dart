import 'package:trilhapp/imports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 236, 241, 243),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: Icon(Icons.person_2, size: 100,),
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: Colors.green,
                height: 30,
                child: Row(
                  children: [
                    Text('Email:'),
                    Text('Informe seu email'),
                  ],
                )),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: Colors.green,
                height: 30,
                child: Text('Informe a senha')),
            Expanded(child: Container()),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: Colors.green,
                height: 30,
                child: Text('Login')),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: Colors.green,
                height: 30,
                child: Text('Cadastro'))
          ],
        ),
      ),
    ));
  }
}
