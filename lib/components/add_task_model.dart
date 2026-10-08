import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
