import 'package:flutter/material.dart';
import 'pages/investor/login_screen.dart';
import 'pages/investor/investor_dashboard.dart';
import 'pages/admin/admin_login_screen.dart'; // Ensure this file exists and contains the AdminLoginScreen class
import 'pages/admin/admin_dashboard.dart';
import 'pages/documentation.dart';

void main() {
  runApp(const IMSApp());
}

class IMSApp extends StatelessWidget {
  const IMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investor Management System',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeSelector(),
        '/login': (context) => const LoginScreen(),
        '/investor': (context) {
          return const InvestorDashboard();
        },
        '/admin-login': (context) => const AdminLoginScreen(),
        '/admin': (context) {
          return const AdminDashboard();
        },
        '/documentation': (context) {
          return const DocumentationPage();
        },
        // '/admin-register': (context) => const AdminRegisterScreen(),
      },
    );
  }
}

class HomeSelector extends StatelessWidget {
  const HomeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      
      AppBar(
        title: const Text('IMS Login'),
        actions: [
          IconButton(
        icon: const Icon(Icons.description),
        tooltip: 'Documentation',
        onPressed: () {
          Navigator.pushNamed(context, '/documentation');
        },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Investor Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin-login'),
              child: const Text('Admin Login'),
            ),
          ],
        ),
      ),
    );
  }
}
