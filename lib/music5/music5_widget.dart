import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music5_model.dart';
export 'music5_model.dart';

class Music5Widget extends StatefulWidget {
  const Music5Widget({super.key});

  static String routeName = 'music5';
  static String routePath = '/music5';

  @override
  State<Music5Widget> createState() => _Music5WidgetState();
}

class _Music5WidgetState extends State<Music5Widget>
    with TickerProviderStateMixin {
  late Music5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Music5Model());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 890.0.ms,
            begin: Offset(0.0, -43.00000000000001),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 1438.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/music.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 50.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              width: 55.0,
                              height: 55.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Group_6792.png',
                                  ).image,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Tu alma susurra lo que tu mente grita por callar',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            fontSize: 34.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1536623975707-c4b3b2af565d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxtZWRpdGF0aW9ufGVufDB8fHx8MTc0ODA0NDMwOHww&ixlib=rb-4.1.0&q=80&w=1080',
                          width: 307.5,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio(
                          'assets/audios/med7.mp3',
                          metas: Metas(
                            id: 'med7.mp3-e0dc4c2a',
                            title:
                                'Soltar no borra el pasado, pero aligera el futuro.\n\n\n',
                          ),
                        ),
                        titleTextStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        playbackButtonColor:
                            FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).primary,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        elevation: 0.0,
                        playInBackground:
                            PlayInBackground.disabledRestoreOnForeground,
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
