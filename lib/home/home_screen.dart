import 'package:couple_money_app/component/mens_list_item.dart';
import 'package:couple_money_app/component/womans_list_item.dart';
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
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey,
          ),
          backgroundColor: Colors.grey,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MensListItem(),
             SizedBox(
               width: 0,
               height: MediaQuery.of(context).size.height,
               child: const VerticalDivider(
                 color: Colors.black,
                 thickness: 3,
               ),
             ),
              WomansListItem(),

            ],
          ),
        );
      },
    );
  }
}
