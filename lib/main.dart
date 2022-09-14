import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_generator/repositories/dio_settings.dart';
import 'package:user_generator/repositories/user_repo.dart';
import 'package:user_generator/screens/user_screen.dart';

import 'cubit/user_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
          create: (context) =>
              UserRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: BlocProvider(
        create: (context) => UserCubit(
          userRepo: RepositoryProvider.of<UserRepo>(context),
        )..getUser(),
        child: Builder(builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: const ColorScheme.dark(),
              primarySwatch: Colors.blue,
            ),
            home: const UserScreen(),
          );
        }),
      ),
    );
  }
}


































































// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_generator/Bloc/cubit_counter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CubitCounter(),
//       child: MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: const HomePage()),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocListener<CubitCounter,CounterState>(
//         listener: (context, state) {

//           if(state.wasIncrement==true){
//             Scaffold.of(context).showBottomSheet((context) => Container(width: 5000,height: 30,color: Colors.amber,child: Text('data',textAlign: TextAlign.center,)));
//           }
//          else if(state.wasIncrement==false){
//             Scaffold.of(context).showBottomSheet((context) => CircleAvatar(child: Text('myfhdf')));
//           }
//         },
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                   'If you want to play with counter \n than click the some boutton',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 20),
//               BlocBuilder<CubitCounter, CounterState>(builder: (context, state) {
//                 return Text(
//                   state.counterValue.toString(),
//                   style:
//                       const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//                 );
//               }),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<CubitCounter>(context).increment();
//                     },
//                     tooltip: 'Increment',
//                     child: const Icon(Icons.add),
//                   ),
//                   FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<CubitCounter>(context).decrement();
//                     },
//                     tooltip: 'Decrement',
//                     child: const Icon(Icons.remove),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
