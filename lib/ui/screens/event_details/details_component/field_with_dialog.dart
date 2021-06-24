import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

import 'custom_alert_dialog.dart';
import 'drop_down_field.dart';

class FieldWithDialog extends StatefulWidget {
  final String title;
  final List<String> dataList;
  final Function onItemPicked;
  String selectedItem;

  FieldWithDialog({
    Key key,
    this.title,
    this.dataList, this.onItemPicked,this.selectedItem
  }) : super(key: key);

  @override
  _FieldWithDialogState createState() => _FieldWithDialogState();
}

class _FieldWithDialogState extends State<FieldWithDialog> {
  @override
  Widget build(BuildContext context) {
    return DropDownField(
      title: widget.title,
      selectedItem: widget.selectedItem,
      onTap: () {
        showDialog(
            context: context,
            builder: (_) {
              return CustomAlertDialog(
                title: widget.selectedItem,
                dataList: widget.dataList,
                onOkPressed: (val) {
                  setState(() {
                    widget.onItemPicked(val);
                    widget.selectedItem = val;
                  });
                },
              );
            });
      },
    );
  }
}
