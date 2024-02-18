import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session21_provider/providers/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('******************************');
    return Scaffold(
      appBar: AppBar(
        title:  Consumer<CounterProvider>(
          builder: (BuildContext context, CounterProvider value, child){
            return Text('Counter Value ${value.count}');
          },
        ),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: const Text('Decrement')),
            Consumer<CounterProvider>(
              builder: (BuildContext context, CounterProvider value,
                  Widget? child) {

                return Text(value.count.toString());
              },
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                child: const Text('Increment')),
          ],
        ),
      ),
    );
  }
}
