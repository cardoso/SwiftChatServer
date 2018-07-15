import Vapor
import SwiftChatCore

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    let messageController = MessageController()
    router.get("messages", use: messageController.index)
    router.post("messages", use: messageController.create)
    router.delete("messages", Message.parameter, use: messageController.delete)
}
