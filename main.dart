import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class Repository {}

class SomeBloc extends Bloc {
  final Repository repository;

  SomeBloc(this.repository);

  get initialState => null;

  @override
  Stream mapEventToState(currentState, event) {
    return null;
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      value: Repository(),
      child: MaterialApp(
        home: SomeScreen(),
      ),
    );
  }
}

class SomeScreen extends StatefulWidget {
  SomeScreen({Key key}) : super(key: key);

  @override
  _SomeScreenState createState() => _SomeScreenState();
}

class _SomeScreenState extends State<SomeScreen> {
  SomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = SomeBloc(Provider.of<Repository>(context));
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
