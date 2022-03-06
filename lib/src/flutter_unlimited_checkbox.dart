import 'package:flutter/material.dart';

import '../flutter_limited_checkbox.dart';

//ignore: must_be_immutable
class FlutterUnlimitedCheckbox extends StatefulWidget {
  List<FlutterSelectModel> unlimitedCheckList;
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


  FlutterUnlimitedCheckbox({Key? key,
    required this.unlimitedCheckList,
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
  _FlutterUnlimitedCheckboxState createState() => _FlutterUnlimitedCheckboxState();
}

class _FlutterUnlimitedCheckboxState extends State<FlutterUnlimitedCheckbox> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.unlimitedCheckList.length,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: widget.mainAxisAlignmentOfRow,
        crossAxisAlignment: widget.crossAxisAlignmentOfRow,
        children: [
          Checkbox(
            value: widget.unlimitedCheckList[index].isSelected,
            onChanged: (v){
              setState(() {
                if(widget.unlimitedCheckList[index].isSelected==false){
                  widget.unlimitedCheckList[index].isSelected=true;

                }else{
                  widget.unlimitedCheckList[index].isSelected=false;
                }
              });
              List<FlutterSelectModel>  checkedList=widget.unlimitedCheckList.where((element) => element.isSelected==true).toList();

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
          Text(widget.unlimitedCheckList[index].selectTitle, style: widget.titleTextStyle,)
        ],
      ),

    );
  }


}
