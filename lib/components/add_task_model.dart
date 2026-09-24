import '/flutter_flow/flutter_flow_util.dart';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:flutter/material.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for AddTitle widget.
  FocusNode? addTitleFocusNode;
  TextEditingController? addTitleTextController;
  String? Function(BuildContext, String?)? addTitleTextControllerValidator;
  // State field(s) for AddDetails widget.
  FocusNode? addDetailsFocusNode;
  TextEditingController? addDetailsTextController;
  String? Function(BuildContext, String?)? addDetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addTitleFocusNode?.dispose();
    addTitleTextController?.dispose();

    addDetailsFocusNode?.dispose();
    addDetailsTextController?.dispose();
  }
}
