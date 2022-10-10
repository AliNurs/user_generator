import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_generator/cubit/user_cubit.dart';

import 'package:user_generator/screens/widgets/icon_button.dart';
import 'package:user_generator/screens/widgets/text_buttons.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final index = ValueNotifier<int>(1);

  @override
  void dispose() {
    index.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is SuccesState) {
            return ListView(
              padding: const EdgeInsets.all(18),
              children: [
                const SizedBox(height: 60),
                const CircleAvatar(
                  radius: 85,
                  foregroundImage: NetworkImage(
                    // state.model.results?[0].picture?.medium ?? ""
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMma1RsDUuSNsB1CLxhrSbNJH9OApmgGQndQ&usqp=CAU',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  // state.model.results[].name??'',
                  state.model.results![1].name?.first ?? 'им',
                  // 'Nursultan Guljigit uulu',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 10),
                const Text(
                  'City: Bishkek',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IconButtons(
                      icon: (Icons.add),
                    ),
                    IconButtons(
                      icon: (Icons.location_on),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                ValueListenableBuilder(
                    valueListenable: index,
                    builder: (context, _, __) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButtons(
                            gender: 'Men',
                            onPressed: () {
                              index.value = 0;
                            },
                            isSelected: index.value == 0,
                          ),
                          TextButtons(
                            gender: 'Both',
                            onPressed: () {
                              index.value = 1;
                            },
                            isSelected: index.value == 1,
                          ),
                          TextButtons(
                            gender: 'Women',
                            onPressed: () {
                              index.value = 2;
                            },
                            isSelected: index.value == 2,
                          ),
                        ],
                      );
                    }),
                const SizedBox(height: 45),
                const Text(
                  '1 user session generator',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      BlocProvider.of<UserCubit>(context).getUser();
                    },
                    child: const Icon(
                      Icons.refresh_outlined,
                      size: 45,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ValueListenableBuilder(
                    valueListenable: index,
                    builder: (context, _, __) {
                      return Text(
                        '$getMode Mode',
                        textAlign: TextAlign.center,
                      );
                    }),
              ],
            );
          }
          return const Center(child: Text('Error Bratan'));
        },
      ),
    ));
  }

  String get getMode {
    String value = '';
    switch (index.value) {
      case 0:
        value = 'Men';
        break;
      case 1:
        value = 'Both';
        break;
      case 2:
        value = 'Women';
        break;
      default:
    }
    return value;
  }
}
