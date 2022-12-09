//
//  Client.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The client code calls the template method to execute the algorithm. Client
/// code does not have to know the concrete class of an object it works with, as
/// long as it works with objects through the interface of their base class.
class Client {
    // ...
    static func clientCode(use object: AbstractProtocol) {
        // ...
        object.templateMethod()
        // ...
    }
    // ...
}
