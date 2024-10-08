// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: Colors.black, // Black button background
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            textStyle: TextStyle(fontSize: 16),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if ((username == 'auradaniarta' && password == 'siswa1234') ||
        (username == 'wandahara' && password == 'guru1234')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => username == 'wandahara'
              ? ProfilePage(username: username)
              : OptionAsPage(username: username),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username/Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _login,
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionAsPage extends StatelessWidget {
  final String username;

  OptionAsPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masuk Sebagai'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OptionTeacherPage(),
                  ),
                );
              },
              child: Text('Anonim'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OptionTeacherPage(username: username),
                  ),
                );
              },
              child: Text('As $username'),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTeacherPage extends StatelessWidget {
  final String? username;

  OptionTeacherPage({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guru Bimbingan Konseling'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeacherButton(teacherName: 'Ibu Wandahara', classInfo: 'Bimbingan Konseling Kelas 11'),
            SizedBox(height: 16),
            TeacherButton(teacherName: 'Bapak Bagus', classInfo: 'Bimbingan Konseling Kelas 10'),
          ],
        ),
      ),
    );
  }
}

class TeacherButton extends StatelessWidget {
  final String teacherName;
  final String classInfo;

  TeacherButton({required this.teacherName, required this.classInfo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 145, 141, 141), backgroundColor: Colors.white,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        shadowColor: Colors.grey.withOpacity(0.2),
        elevation: 4,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(teacher: teacherName),
          ),
        );
      },
      child: Row(
        children: [
          Icon(Icons.person, color: Colors.black),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(teacherName, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(classInfo),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(username),
            subtitle: Text('NIP: 123456789023'),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(child: Text('A')),
                  title: Text('Agustina Safitri'),
                  subtitle: Text('15m ago'),
                ),
                ListTile(
                  leading: CircleAvatar(child: Text('R')),
                  title: Text('Rinal Marselino'),
                  subtitle: Text('15m ago'),
                ),
                ListTile(
                  leading: CircleAvatar(child: Text('A')),
                  title: Text('Anonymous'),
                  subtitle: Text('15m ago'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  final String teacher;

  ChatPage({required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat with $teacher')),
      body: Center(child: Text('Chat interface would go here')),
    );
  }
}
