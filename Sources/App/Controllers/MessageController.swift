import Vapor
import SwiftChatCore

/// Controls basic CRUD operations on `Message`s.
final class MessageController {
    /// Returns a list of all `Message`s.
    func index(_ req: Request) throws -> Future<[Message]> {
        return Message.query(on: req).all()
    }

    /// Saves a decoded `Message` to the database.
    func create(_ req: Request) throws -> Future<Message> {
        return try req.content.decode(Message.self).flatMap { message in
            return message.save(on: req)
        }
    }

    /// Deletes a parameterized `Message`.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Message.self).flatMap { message in
            return message.delete(on: req)
        }.transform(to: .ok)
    }
}
