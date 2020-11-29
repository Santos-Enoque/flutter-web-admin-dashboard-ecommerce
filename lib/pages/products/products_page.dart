import 'dart:math';

import 'package:ecommerce_admin_tut/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_table/ResponsiveDatatable.dart';
import 'package:responsive_table/responsive_table.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<DatatableHeader> _headers = [
    DatatableHeader(
        text: "ID",
        value: "id",
        show: false,
        sortable: true,
        textAlign: TextAlign.right),
    DatatableHeader(
        text: "Name",
        value: "name",
        show: true,
        flex: 2,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "SKU",
        value: "sku",
        show: true,
        sortable: true,
        textAlign: TextAlign.center),
    DatatableHeader(
        text: "Category",
        value: "category",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Price",
        value: "price",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Margin",
        value: "margin",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "In Stock",
        value: "in_stock",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Alert",
        value: "alert",
        show: true,
        sortable: true,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Received",
        value: "received",
        show: true,
        sortable: false,
        sourceBuilder: (value, row) {
          List list = List.from(value);
          return Container(
            child: Column(
              children: [
                Container(
                  width: 85,
                  child: LinearProgressIndicator(
                    value: list.first / list.last,
                  ),
                ),
                Text("${list.first} of ${list.last}")
              ],
            ),
          );
        },
        textAlign: TextAlign.center),
  ];

  List<int> _perPages = [5, 10, 15, 100];
  int _total = 100;
  int _currentPerPage;
  int _currentPage = 1;
  bool _isSearch = false;
  List<Map<String, dynamic>> _source = List<Map<String, dynamic>>();
  List<Map<String, dynamic>> _selecteds = List<Map<String, dynamic>>();
  String _selectableKey = "id";

  String _sortColumn;
  bool _sortAscending = true;
  bool _isLoading = true;
  bool _showSelect = true;

  List<Map<String, dynamic>> _generateData({int n: 100}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = List<Map<String, dynamic>>();
    var i = _source.length;
    print(i);
    for (var data in source) {
      temps.add({
        "id": i,
        "sku": "$i\000$i",
        "name": "Product Product Product Product $i",
        "category": "Category-$i",
        "price": "${i}0.00",
        "cost": "20.00",
        "margin": "${i}0.20",
        "in_stock": "${i}0",
        "alert": "5",
        "received": [i + 20, 150]
      });
      i++;
    }
    return temps;
  }


  _initData() async {
    setState(() => _isLoading = true);
    Future.delayed(Duration(seconds: 2)).then((value) {
      _source.addAll(_generateData(n: 1000));
      setState(() => _isLoading = false);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              PageHeader(text: 'PRODUCTS',),

              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(0),
                constraints: BoxConstraints(
                  maxHeight: 700,
                ),
                child: Card(
                  elevation: 1,
                  shadowColor: Colors.black,
                  clipBehavior: Clip.none,
                  child: ResponsiveDatatable(
                    title: !_isSearch
                        ? RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("ADD CATEGORY"))
                        : null,
                    actions: [
                      if (_isSearch)
                        Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      icon: Icon(Icons.cancel),
                                      onPressed: () {
                                        setState(() {
                                          _isSearch = false;
                                        });
                                      }),
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.search), onPressed: () {})),
                            )),
                      if (!_isSearch)
                        IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              setState(() {
                                _isSearch = true;
                              });
                            })
                    ],
                    headers: _headers,
                    source: _source,
                    selecteds: _selecteds,
                    showSelect: _showSelect,
                    autoHeight: false,
                    onTabRow: (data) {
                      print(data);
                    },
                    onSort: (value) {
                      setState(() {
                        _sortColumn = value;
                        _sortAscending = !_sortAscending;
                        if (_sortAscending) {
                          _source.sort((a, b) =>
                              b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                        } else {
                          _source.sort((a, b) =>
                              a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                        }
                      });
                    },
                    sortAscending: _sortAscending,
                    sortColumn: _sortColumn,
                    isLoading: _isLoading,
                    onSelect: (value, item) {
                      print("$value  $item ");
                      if (value) {
                        setState(() => _selecteds.add(item));
                      } else {
                        setState(
                                () => _selecteds.removeAt(_selecteds.indexOf(item)));
                      }
                    },
                    onSelectAll: (value) {
                      if (value) {
                        setState(() => _selecteds =
                            _source.map((entry) => entry).toList().cast());
                      } else {
                        setState(() => _selecteds.clear());
                      }
                    },
                    footers: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Rows per page:"),
                      ),
                      if (_perPages != null)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButton(
                              value: _currentPerPage,
                              items: _perPages
                                  .map((e) => DropdownMenuItem(
                                child: Text("$e"),
                                value: e,
                              ))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  _currentPerPage = value;
                                });
                              }),
                        ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child:
                        Text("$_currentPage - $_currentPerPage of $_total"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                        onPressed: () {
                          setState(() {
                            _currentPage =
                            _currentPage >= 2 ? _currentPage - 1 : 1;
                          });
                        },
                        padding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 16),
                        onPressed: () {
                          setState(() {
                            _currentPage++;
                          });
                        },
                        padding: EdgeInsets.symmetric(horizontal: 15),
                      )
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}
