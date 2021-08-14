import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'home_screen_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (context) => HomeScreenController(
        context: context,
      ),
      builder: (context, _) {
        final Size size = MediaQuery.of(context).size;
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'The 集中力',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 45,
                  ),
                ),
                Container(
                  width: size.width / 1.5,
                  height: size.width / 6,
                  child: ElevatedButton(
                    // onPressed: () => context.read<HomeScreenController>().onTap(),
                    onPressed: () {

                    },
                    child: const Text(
                      'スタート',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}