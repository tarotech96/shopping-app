import 'package:animations/animations.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/constants/layout_constants.dart';
import 'package:shopping_app/modules/product_details/product_details.dart';
import 'package:shopping_app/modules/products/products.dart';
import 'package:shopping_app/widgets/circular_loader.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView(
      {Key? key, required this.products, required this.productsTotal})
      : super(key: key);

  final BuiltList<Product> products;
  final int productsTotal;

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final ScrollController _scrollController = ScrollController();
  late ProductsBloc _productsBloc;

  int get _productsCount => widget.products.length;
  // ignore: unused_element
  bool get _shouldLoadMoreProducts => _productsCount < widget.productsTotal;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _productsBloc = Provider.of<ProductsBloc>(context, listen: false);
  }

  Future<void> _onRefresh() async {
    _productsBloc.add(const ProductsLoadStarted(isRefresh: true));
  }

  void _onScroll() {
    if (_scrollController.hasClients && _shouldLoadMoreProducts) {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      // ignore: no_leading_underscores_for_local_identifiers
      final _currentOffset = _scrollController.offset;

      if (_currentOffset >= maxScrollExtent * 0.8) {
        _productsBloc.add(const ProductsLoadStarted());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: _onRefresh,
        color: Colors.black,
        child: ListView.builder(
            controller: _scrollController,
            itemCount:
                _shouldLoadMoreProducts ? _productsCount + 1 : _productsCount,
            itemBuilder: (_, i) => i >= _productsCount
                ? const CircularLoader()
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingM,
                        vertical: LayoutConstants.marginS),
                    child: OpenContainer(
                        openColor: Colors.transparent,
                        openBuilder: (_, __) => ProductDetailsPage(
                              product: widget.products[i],
                            ),
                        closedBuilder: (_, openContainer) =>
                            ProductCard(product: widget.products[i])),
                  )));
  }
}
