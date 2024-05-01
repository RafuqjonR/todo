import 'package:flutter/material.dart';
import 'package:to_do/task.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            size: 20,
          ),
          title: const Text(
            'My Todo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [Icon(Icons.notifications_active)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: const Icon(Icons.done_outline_outlined),
                      ),
                      const Column(
                        children: [
                          Text(
                            '''Complete Flutter
                 UI app challengend upload it 
        on Github''',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Remaing tasks",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '(24)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Tasks(
                            tasks: 'do all app',
                            icon: Icons.app_blocking_rounded,
                            date: '29 apr'),
                        Tasks(
                            tasks: 'do all homework',
                            icon: Icons.done,
                            date: '31 apr'),
                        Tasks(
                            tasks: 'Proident amet .',
                            icon: Icons.app_blocking_rounded,
                            date: '31 apr'),
                        Tasks(
                            tasks: 'Dolore do ea .',
                            icon: Icons.car_repair_sharp,
                            date: '01 may'),
                        Tasks(
                            tasks: 'Irure proident .',
                            icon: Icons.app_blocking_rounded,
                            date: '02 may'),
                        Tasks(
                            tasks: 'Minim ipsum .',
                            icon: Icons.done_outline,
                            date: '03 may'),
                        Tasks(
                            tasks: 'Fugiat ipsum enim do.',
                            icon: Icons.app_blocking_rounded,
                            date: '04 may'),
                        Tasks(
                            tasks: 'Aute in consectetur.',
                            icon: Icons.app_blocking_rounded,
                            date: '05 may'),
                        Tasks(
                            tasks: 'Reprehenderit quis do.',
                            icon: Icons.app_blocking_rounded,
                            date: '06 may'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
