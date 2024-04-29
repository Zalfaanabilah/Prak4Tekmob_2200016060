import 'package:flutter/material.dart';

void main() {
  runApp(ShrineApp());
}

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      initialRoute: '/',
      routes: {
        '/signup': (BuildContext context) => const SignupPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => HomePage(),
      },
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shrine'),
      ),
      body: Center(
        child: const Text('Welcome to Shrine App!'),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHRINE"),
        backgroundColor: const Color.fromARGB(255, 250, 220, 255),
        leading: Image.asset('assets/diamond.png'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 30.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text(
                  'Registrasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text("2100016008 Muhammad Abduh")
              ],
            ),
            const SizedBox(height: 30.0),
            const Text("Masukan Nama User"),
            const SizedBox(height: 12.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            const Text("Masukan Password"),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            const Text("Masukan Kembali Password"),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController2,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                labelText: 'Password Kembali',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Bersihkan'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _passwordController2.clear();
                  },
                ),
                const SizedBox(width: 8.0), // Add some space between buttons
                ElevatedButton(
                  child: const Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah punya akun ?"),
                TextButton(
                  child: const Text('Sign In'),
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                const SizedBox(width: 8.0), // Add some space between buttons
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    // Navigate to the next page or perform login logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
