import Foundation
import Logging

/// Central logging configuration for BlueKit
@available(macOS 10.15, iOS 13.0, *)
public enum BlueKitLogger {
  /// Shared logger instance
  @MainActor
  public static var logger = Logger(label: "com.philocalyst.bluekit")

  /// Configure logging level based on debug/verbose flags
  /// - Parameters:
  ///   - debug: Enable debug level logging
  ///   - verbose: Enable verbose (trace) level logging
  @MainActor
  public static func configure(debug: Bool, verbose: Bool) {
    let logLevel: Logger.Level

    if verbose {
      logLevel = .trace
      logger.info("Verbose logging enabled")
    } else if debug {
      logLevel = .debug
      logger.info("Debug logging enabled")
    } else {
      logLevel = .warning
    }

  }
}
