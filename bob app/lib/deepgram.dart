import 'dart:async';
import 'dart:convert';
import 'package:sound_stream/sound_stream.dart';
import 'package:web_socket_channel/io.dart';

const serverUrl =
    'wss://api.deepgram.com/v1/listen?encoding=linear16&sample_rate=16000&language=en-GB';

const apiKey = '600d9cf2e209f9a6e33e1f127de466ef12e0663a';
