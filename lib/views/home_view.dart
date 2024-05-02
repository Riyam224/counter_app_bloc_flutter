import 'package:counter_bloc/widgets/action_btns.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bloc"),
        centerTitle: true,
      ),
      //  todo
      floatingActionButton: const ActionButtons(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'counter value is :  ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '0',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
