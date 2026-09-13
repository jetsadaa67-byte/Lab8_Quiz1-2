import 'package:flutter/material.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {

  // แบบฝึกหัดที่ 1
  // สร้าง GlobalKey สำหรับ Form
  final _formKey = GlobalKey<FormState>();

  // แบบฝึกหัดที่ 2
  // Controllers สำหรับ Email และ Password
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    // สร้าง Controllers
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // คืน resource ของ Controllers
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('ฟอร์มล็อกอิน'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[

              const Text(
                'กรุณาป้อนข้อมูลเข้าสู่ระบบ:',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),

              // ช่อง Email
              TextFormField(
                controller: _emailController,

                decoration: const InputDecoration(
                  labelText: 'อีเมล',
                  hintText: 'you@example.com',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.emailAddress,

                // validator จะเพิ่มในแบบฝึกหัดที่ 3
                // onSaved จะเพิ่มในแบบฝึกหัดที่ 4
              ),

              const SizedBox(height: 15),

              // ช่อง Password
              TextFormField(
                controller: _passwordController,

                decoration: const InputDecoration(
                  labelText: 'รหัสผ่าน',
                  hintText: 'ป้อนรหัสผ่านของคุณ',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),

                obscureText: true,

                // validator จะเพิ่มในแบบฝึกหัดที่ 3
                // onSaved จะเพิ่มในแบบฝึกหัดที่ 4
              ),

              const SizedBox(height: 30),

              // ปุ่ม Submit จะเพิ่มในแบบฝึกหัดที่ 3
            ],
          ),
        ),
      ),
    );
  }
}