import 'package:best_buy_api/best_buy_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'package:shopping_app/modules/products/products.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends HydratedBloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required this.repository,
  }) : super(const ProductsState.initial());

  final ProductsRepository repository;

  @override
  // ignore: override_on_non_overriding_member
  Stream<Transition<ProductsEvent, ProductsState>> transformEvents(
    Stream<ProductsEvent> events,
    Transition<ProductsEvent, ProductsState> transitionFn,
  ) {
    return transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  @override
  // ignore: override_on_non_overriding_member
  Stream<ProductsState> mapEventToState(ProductsEvent event) => event.map(
        initialLoadStarted: _mapInitialLoadStartedToState,
        loadStarted: _mapLoadStartedToState,
      );

  Stream<ProductsState> _mapInitialLoadStartedToState(
    ProductsInitialLoadStarted event,
  ) async* {
    if (state is! ProductsLoadSuccess) {
      yield* _loadProductsData(true);
    }
  }

  Stream<ProductsState> _mapLoadStartedToState(
    ProductsLoadStarted event,
  ) async* {
    yield* _loadProductsData(event.isRefresh);
  }

  Stream<ProductsState> _loadProductsData(bool isRefresh) async* {
    if (isRefresh) {
      yield const ProductsState.initial();
    }

    final loadedProducts = state.maybeMap<BuiltList<Product>>(
      loadSuccess: (ProductsLoadSuccess successState) => successState.products,
      orElse: () => <Product>[].build(),
    );
    final from = isRefresh ? 0 : loadedProducts.length;

    try {
      final productsData = await repository.getProductsData(from);
      final products = isRefresh
          ? productsData.products.build()
          : loadedProducts.rebuild((b) => b.addAll(productsData.products));

      yield ProductsState.loadSuccess(
        products: products,
        total: productsData.total,
      );
    } on BestBuyApiException {
      yield const ProductsState.loadFailure();
    } catch (e) {
      yield const ProductsState.loadFailure();
    }
  }

  @override
  ProductsState fromJson(Map<String, dynamic> json) {
    final productsJsonList = json['products'] as List;
    final products =
        productsJsonList.map((product) => Product.fromJson(product)).toList();

    return ProductsState.loadSuccess(
      products: products.build(),
      total: json['total'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(ProductsState state) {
    return state.maybeMap(
      loadSuccess: (ProductsLoadSuccess successState) => <String, dynamic>{
        'products': successState.products.toList(),
        'total': successState.total,
      },
      orElse: () => <String, dynamic>{},
    );
  }
}
