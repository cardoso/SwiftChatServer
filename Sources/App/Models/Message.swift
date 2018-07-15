import Vapor
import FluentSQLite
import SwiftChatCore

/// Allows `Message` to be used in SQLite
extension Message: SQLiteModel { }

/// Allows `Message` to be used as a dynamic migration.
extension Message: Migration { }

/// Allows `Message` to be encoded to and decoded from HTTP messages.
extension Message: Content { }

/// Allows `Message` to be used as a dynamic parameter in route definitions.
extension Message: Parameter { }
