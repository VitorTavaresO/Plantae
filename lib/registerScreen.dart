import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _dateBirthController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscureText = true;
  @override
  void dispose() {
    _nameController.dispose();
    _dateBirthController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 173, 132, 1),
        title: const Text('REGISTER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/user.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'NAME',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _dateBirthController,
                decoration: const InputDecoration(
                  labelText: 'DATE OF BIRTH',
                  hintText: 'Enter your date of birth',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date of birth.';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async{
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    _dateBirthController.text = pickedDate.toString();
                  }
                },
                child: const Text('Select Date'),
                  ),
              
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-MAIL',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: _obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: ' CONFIRM PASSWORD',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: _obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // printa no terminal as informações digitadas
                    String name = _nameController.text;
                    String dateBirth = _dateBirthController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    print('Name: $name');
                    print('Date of Birth: $dateBirth');
                    print('Email: $email');
                    print('Password: $password');
                  }
                },
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, 
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                child: const Text('REGISTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
