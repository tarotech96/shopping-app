import 'helpers/hydrated_bloc.dart';
import 'config/config_test.dart' as config_test;
import 'modules/products/products_test.dart' as products_test;

void main() {
  initHydratedBloc();
  config_test.main();
  products_test.main();
}
