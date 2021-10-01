// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  /// Add
  internal static let actionAddTitle = Strings.tr("Localizable", "actionAddTitle")
  /// OK
  internal static let actionOkTitle = Strings.tr("Localizable", "actionOkTitle")
  /// Save
  internal static let actionSaveTitle = Strings.tr("Localizable", "actionSaveTitle")
  /// Card Number
  internal static let cardDetailCardNumberPlaceholder = Strings.tr("Localizable", "cardDetailCardNumberPlaceholder")
  /// Enter name
  internal static let cardDetailEnterNamePlaceholder = Strings.tr("Localizable", "cardDetailEnterNamePlaceholder")
  /// Create
  internal static let createModeTitle = Strings.tr("Localizable", "createModeTitle")
  /// Edit
  internal static let editModeTitle = Strings.tr("Localizable", "editModeTitle")
  /// Add New
  internal static let mainAddNewButton = Strings.tr("Localizable", "mainAddNewButton")
  /// Cards Box
  internal static let mainTitle = Strings.tr("Localizable", "mainTitle")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
