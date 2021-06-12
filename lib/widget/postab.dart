import 'package:deepin/config/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostWhereTabWidget extends StatelessWidget {
  final SearchPostsQueryStringWhere where;

  final void Function(SearchPostsQueryStringWhere item) onTap;

  PostWhereTabWidget({required this.where, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...SearchPostsQueryStringWhere.values
            .map((item) => Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    right: 6.0,
                  ),
                  child: CupertinoButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    color:
                        where == item ? Get.theme.accentColor : Colors.black38,
                    onPressed: () => onTap(item),
                    child: Text(item.getQueryHumanText),
                  ),
                ))
            .toList(),
      ],
    );
  }
}

class PostOrderTabWidget extends StatelessWidget {
  final SearchPostsQueryStringOrder order;

  final void Function(SearchPostsQueryStringOrder item) onTap;

  PostOrderTabWidget({required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ...SearchPostsQueryStringOrder.values.map((item) {
            return GestureDetector(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  item.getQueryHumanText,
                  style: TextStyle(
                    color:
                        order == item ? Get.theme.accentColor : Colors.black87,
                  ),
                ),
              ),
              onTap: () => onTap(item),
            );
          }).toList(),
        ],
      ),
    );
  }
}
