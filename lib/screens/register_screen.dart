import 'package:flutter/material.dart';
import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
            const Icon(Icons.travel_explore, size: 100, color: Colors.pinkAccent),

              const SizedBox(height: 20),
              const Text("Get Started", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text("by creating a free account"),
              const SizedBox(height: 24),
              const TextField(
                decoration: InputDecoration(labelText: "Full name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: "Valid email", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: "Phone number", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Strong password", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Checkbox(value: true, onChanged: null),
                  Text("By signing up you agree to our Terms and Conditions"),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen())),
                style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                child: const Text("Next"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Already a member? Login in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}