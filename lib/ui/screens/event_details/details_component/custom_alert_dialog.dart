import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  final String title;
  final List<String> dataList;
  final Function onOkPressed;


  const CustomAlertDialog({Key key, this.title, this.dataList, this.onOkPressed}) : super(key: key);

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                height: 1,
                color: kChipColorTitle,
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: widget.dataList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = widget.dataList[index];
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${widget.dataList[index]}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: selectedItem ==
                                          widget.dataList[index]
                                          ? kPrimaryColor
                                          : Colors.black),
                                ),
                                selectedItem == widget.dataList[index]
                                    ? Icon(
                                  Icons.check,
                                  color: kPrimaryColor,
                                )
                                    : Text('')
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Divider(
                height: 1,
                color: kChipColorTitle,
              ),
              Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Container(
                        height: 45,
                        color: kChipColorTitle,
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                if(selectedItem != ''){
                                  widget.onOkPressed(selectedItem);
                                  Navigator.pop(context);
                                }
                              },
                              child: Text('Ok',
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
