//
//  PermissionAccessor.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class PermissionAccessor: CustomStringConvertible {

    typealias Completion = (Bool) -> ()

    func requestAccessIfNeeded(_ completion: @escaping Completion) {

        guard !hasAccess() else { completion(true); return }

        willReceiveAccess()

        requestAccess { status in
            status ? self.didReceiveAccess() : self.didRejectAccess()

            completion(status)
        }
    }

    func requestAccess(_ completion: @escaping Completion) {
        fatalError("Should be overridden")
    }

    func hasAccess() -> Bool {
        fatalError("Should be overridden")
    }

    var description: String { return "PermissionAccessor" }

    /// Hooks
    func willReceiveAccess() {}

    func didReceiveAccess() {}

    func didRejectAccess() {}
}
