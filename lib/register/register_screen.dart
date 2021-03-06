import 'package:couple_money_app/component/man_button_item.dart';
import 'package:couple_money_app/component/number_button_item.dart';
import 'package:couple_money_app/component/woman_button_item.dart';
import 'package:couple_money_app/register/register_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RegisterScreenController, RegisterScreenState>(
      create: (context) => RegisterScreenController(
        context: context,
      ),
      builder: (context, _) {
        final exp = context.select<RegisterScreenState, String>((state) => state.exp);
        return Scaffold(
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '￥',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            exp,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: HoldDetector(
                              onHold: () => context.read<RegisterScreenController>().delete(),
                              child: Theme(
                                data: ThemeData(splashColor: Colors.white),
                                child: Material(
                                  elevation: 0,
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    onPressed: () => context.read<RegisterScreenController>().delete(),
                                    child: const Text(
                                      '⌫',
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NumberButtonItem(
                          text: '7',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('7'),
                        ),
                        NumberButtonItem(
                          text: '8',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('8'),
                        ),
                        NumberButtonItem(
                          text: '9',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('9'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NumberButtonItem(
                          text: '4',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('4'),
                        ),
                        NumberButtonItem(
                          text: '5',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('5'),
                        ),
                        NumberButtonItem(
                          text: '6',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('6'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NumberButtonItem(
                          text: '1',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('1'),
                        ),
                        NumberButtonItem(
                          text: '2',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('2'),
                        ),
                        NumberButtonItem(
                          text: '3',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('3'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NumberButtonItem(
                          text: '0',
                          textSize: 45,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('0'),
                        ),
                        NumberButtonItem(
                          text: '00',
                          textSize: 35,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().numClick('00'),
                        ),
                        NumberButtonItem(
                          text: 'AC',
                          textSize: 30,
                          fillColor: 0xff424242,
                          textColor: 0xFFFFFFFF,
                          callback: () => context.read<RegisterScreenController>().allDelete(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ManButtonItem(
                          text: '登録する',
                          textSize: 20,
                          iconSize: 30,
                          callback: () => context.read<RegisterScreenController>().onTapManRegister(),
                        ),
                        WomanButtonItem(
                          text: '登録する',
                          textSize: 20,
                          iconSize: 30,
                          callback: () => context.read<RegisterScreenController>().onTapWomanRegister(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: TextButton(
                          onPressed: () => context.read<RegisterScreenController>().onTapBack(),
                          child: const Text(
                            'キャンセル',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
