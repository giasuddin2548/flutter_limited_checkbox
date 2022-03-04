import 'package:flutter/material.dart';

import '../flutter_limited_select.dart';

//ignore: must_be_immutable
class FlutterLimitedSelect extends StatefulWidget {
  List<FlutterSelectModel> limitedValueList;
  int limit;
  Function(List<FlutterSelectModel> selectedList) onChanged;
  TextStyle? titleTextStyle;
  Color? checkColor;
  Color? activeColor;
  Color? focusColor;
  OutlinedBorder? shape;
  BorderSide? borderSide;
  FocusNode? focusNode;
  double? splashRadius;
  bool autofocus;
  MainAxisAlignment mainAxisAlignmentOfRow;
  CrossAxisAlignment  crossAxisAlignmentOfRow;


  FlutterLimitedSelect({Key? key,
    required this.limitedValueList,
    required this.limit,
    required this.onChanged,
    this.titleTextStyle,
    this.checkColor,
    this.activeColor,
    this.shape,
    this.borderSide,
    this.focusNode,
    this.splashRadius,
    this.focusColor,
    this.autofocus=false,
    this.mainAxisAlignmentOfRow=MainAxisAlignment.center,
    this.crossAxisAlignmentOfRow=CrossAxisAlignment.center,


  }) : super(key: key);

  @override
  _FlutterLimitedSelectState createState() => _FlutterLimitedSelectState();
}

class _FlutterLimitedSelectState extends State<FlutterLimitedSelect> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.limitedValueList.length,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: widget.mainAxisAlignmentOfRow,
        crossAxisAlignment: widget.crossAxisAlignmentOfRow,
        children: [
          Checkbox(
            value: widget.limitedValueList[index].isSelected,
            onChanged: (v){
              setState(() {
                if(widget.limitedValueList[index].isSelected==false){
                  var checker=widget.limitedValueList.where((element) => element.isSelected==true).toList().length;
                  if(checker<widget.limit){
                    widget.limitedValueList[index].isSelected=true;
                  }

                }else{
                  widget.limitedValueList[index].isSelected=false;
                }
              });
              List<FlutterSelectModel>  checkedList=widget.limitedValueList.where((element) => element.isSelected==true).toList();

              widget.onChanged(checkedList);

            },
            checkColor: widget.checkColor,
            activeColor: widget.activeColor,
            shape: widget.shape,
            side: widget.borderSide,
            focusColor: widget.focusColor,
            autofocus: widget.autofocus,
            focusNode: widget.focusNode,
            splashRadius: widget.splashRadius,
          ),
          Text(widget.limitedValueList[index].selectTitle, style: widget.titleTextStyle,)
        ],
      ),

    );
  }


}
