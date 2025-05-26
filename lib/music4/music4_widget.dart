import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music4_model.dart';
export 'music4_model.dart';

class Music4Widget extends StatefulWidget {
  const Music4Widget({super.key});

  static String routeName = 'music4';
  static String routePath = '/music4';

  @override
  State<Music4Widget> createState() => _Music4WidgetState();
}

class _Music4WidgetState extends State<Music4Widget>
    with TickerProviderStateMixin {
  late Music4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Music4Model());

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
                    StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> conditionalBuilderUsersRecordList =
                            snapshot.data!;

                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              fav: true,
                            ));
                          },
                          child: Builder(
                            builder: (context) {
                              if (valueOrDefault<bool>(
                                  currentUserDocument?.fav, false)) {
                                return FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Color(0xFFF51C1C),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      fav: false,
                                    ));
                                  },
                                );
                              } else {
                                return FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFEFEDED),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
                    Text(
                      'Lluvia Lenta',
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
                          'https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxyYWlufGVufDB8fHx8MTc0ODA0Nzk1OHww&ixlib=rb-4.1.0&q=80&w=1080',
                          width: 260.0,
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
                          'assets/audios/med6.mp3',
                          metas: Metas(
                            id: 'med6.mp3-a14b354e',
                            title:
                                'Llorar no es debilidad; es limpieza del alma.\n\n',
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
