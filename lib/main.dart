import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(BlocProvider(
      create: (context) => CounterBloc(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<CounterBloc, int>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Text(state.toString());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(ArttirEvent());
                    
                    },
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 5),
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(AzaltEvent());
                    },
                    child: const Icon(Icons.plus_one),
                  )
                ],
              )
            ],
          )),
    );
  }
}
