import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GET-X SNACK BAR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.snackbar("This is title", "This is message",
                      duration: const Duration(seconds: 3),
                      borderRadius: 8,
                      backgroundColor: Colors.green,
                      borderColor: Colors.white,
                      colorText: Colors.white,
                      borderWidth: 8,
                      animationDuration: const Duration(seconds: 1),
                      dismissDirection: DismissDirection.horizontal,
                      icon: const Icon(Icons.access_alarm, color: Colors.white),
                      isDismissible: true,
                      overlayBlur: 2,
                      snackPosition: SnackPosition.BOTTOM,
                      snackStyle: SnackStyle.FLOATING,
                      snackbarStatus: (status) => {
                            if (status == SnackbarStatus.CLOSED)
                              {debugPrint("Snackbar closed")}
                          },
                      shouldIconPulse: false,
                      mainButton: TextButton(
                        onPressed: () {
                          Get.closeCurrentSnackbar();
                        },
                        child: const Text("Ok",
                            style: TextStyle(color: Colors.white)),
                      ),
                  );
                },
                child: const Text("Show Snack bar"))));
  }
}
