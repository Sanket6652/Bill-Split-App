import 'package:logger/logger.dart';

// Singleton LoggingService class
// Ensures that we always use the same instance of the logger throughout the app.
class LoggingService {
  static final Logger _logger = Logger(printer: PrettyPrinter(lineLength: 500));

  static LoggingService? _instance;

  LoggingService._(); // Private constructor to enforce singleton pattern

  factory LoggingService() {
    _instance ??= LoggingService._();
    return _instance!;
  }

  static void debugLog(dynamic log) {
    // _logger.d(log);
  }

  static void errorLog(dynamic log) {
    // _logger.e(log);
  }
}

// log.d('Debug message');   // Debug level
// log.i('Information message');  // Info level
// log.w('Warning message');  // Warning level
// log.e('Error message');   // Error level
// log.v('Verbose message');  // Verbose level
