import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for S-Email widget.
  FocusNode? sEmailFocusNode;
  TextEditingController? sEmailTextController;
  String? Function(BuildContext, String?)? sEmailTextControllerValidator;
  String? _sEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for S-Password widget.
  FocusNode? sPasswordFocusNode;
  TextEditingController? sPasswordTextController;
  late bool sPasswordVisibility;
  String? Function(BuildContext, String?)? sPasswordTextControllerValidator;
  String? _sPasswordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for S-ConfirmPassword widget.
  FocusNode? sConfirmPasswordFocusNode;
  TextEditingController? sConfirmPasswordTextController;
  late bool sConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      sConfirmPasswordTextControllerValidator;
  String? _sConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for L-Login widget.
  FocusNode? lLoginFocusNode;
  TextEditingController? lLoginTextController;
  String? Function(BuildContext, String?)? lLoginTextControllerValidator;
  // State field(s) for L-Password widget.
  FocusNode? lPasswordFocusNode;
  TextEditingController? lPasswordTextController;
  late bool lPasswordVisibility;
  String? Function(BuildContext, String?)? lPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sEmailTextControllerValidator = _sEmailTextControllerValidator;
    sPasswordVisibility = false;
    sPasswordTextControllerValidator = _sPasswordTextControllerValidator;
    sConfirmPasswordVisibility = false;
    sConfirmPasswordTextControllerValidator =
        _sConfirmPasswordTextControllerValidator;
    lPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    sEmailFocusNode?.dispose();
    sEmailTextController?.dispose();

    sPasswordFocusNode?.dispose();
    sPasswordTextController?.dispose();

    sConfirmPasswordFocusNode?.dispose();
    sConfirmPasswordTextController?.dispose();

    lLoginFocusNode?.dispose();
    lLoginTextController?.dispose();

    lPasswordFocusNode?.dispose();
    lPasswordTextController?.dispose();
  }
}
