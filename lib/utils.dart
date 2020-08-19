class Utils {
  static final Utils _instance = Utils._internal();
  Utils._internal();

  factory Utils() {
    return _instance;
  }

  static const file_formats_list = [
    'mp3',
    'aac',
    'm4a',
    'wma',
    'opus',
    'ac3',
    'ogg',
    'wav',
    'flac',
    'aiff',
    'amr nb',
    'amr wb',
    '3gp'
  ];

  static const bitrate_types = ["CBR", "VBR", "ABR"];

//// different bit rate values in kb/s
  static const bitrate_list = [
    32,
    42,
    48,
    56,
    64,
    80,
    96,
    112,
    128,
    160,
    192,
    224,
    256,
    320
  ];

  /// frequenices in hertz(Hz)
  static const sample_reate_lsit = [
    8000,
    11025,
    12000,
    16000,
    22050,
    24000,
    32000,
    44100,
    48000
  ];

  static const channels_list = ["mono", "streo"];
}
