import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_provider.dart';

class ActionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CounterRiverpod();
  }
}

class CounterRiverpod extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref){
    final counterValue = ref.watch(counterProvider);
    final nameValue = ref.watch(nameProvider);
    return(
      Scaffold(body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(counterValue.toString()),
        Text(nameValue),
        NameRiverpod(),
        TextButton(onPressed: () => Navigator.pop(context), child: const Text("Go back to Home"))
      ],),),
      floatingActionButton: FloatingActionButton(onPressed: () => ref.read(counterProvider.notifier).state+=1, child: 
      const Icon(Icons.plus_one_rounded)),
      bottomSheet: BottomSheet(onClosing: () => {}, builder: (context) => const Text("Hello"),),)
    );
  }
}

class NameRiverpod extends ConsumerWidget{
  
  @override
  Widget build(BuildContext context, WidgetRef ref){
    String input = "";
    return Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(onChanged: (value) => input = value,),
      TextButton(onPressed: () => ref.read(nameProvider.notifier).state = input, child: const Text("Update Name"))
    ],);
  }
}