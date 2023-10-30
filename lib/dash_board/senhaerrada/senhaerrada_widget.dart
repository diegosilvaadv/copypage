import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'senhaerrada_model.dart';
export 'senhaerrada_model.dart';

class SenhaerradaWidget extends StatefulWidget {
  const SenhaerradaWidget({Key? key}) : super(key: key);

  @override
  _SenhaerradaWidgetState createState() => _SenhaerradaWidgetState();
}

class _SenhaerradaWidgetState extends State<SenhaerradaWidget> {
  late SenhaerradaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenhaerradaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomePage');
                  },
                  child: Text(
                    'SENHA INCORRETA',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFFFF0004),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
