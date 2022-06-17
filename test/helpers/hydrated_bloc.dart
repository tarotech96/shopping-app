import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping_app/main.dart';

class MockStorage extends Mock implements Storage {
  @override
  Future<void> write(String key, dynamic value) async {}

  @override
  Future<void> delete(String key) async {}

  @override
  Future<void> clear() async {}
}

void initHydratedBloc() {
  TestWidgetsFlutterBinding.ensureInitialized();

  HydratedBlocOverrides.runZoned(
    () => runApp(const App()),
    storage: MockStorage(),
  );
}
