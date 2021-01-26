
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;

  await Future.delayed(threeSeconds, (){
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2) {
  String result = task2;
  print('Task 3 complete with $task2');
}