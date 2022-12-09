//
//  ConcreteClass1.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// Concrete classes have to implement all abstract operations of the base
/// class. They can also override some operations with a default implementation.
class ConcreteClass1: AbstractProtocol {

    func requiredOperations1() {
        print("ConcreteClass1 says: Implemented Operation1\n")
    }

    func requiredOperation2() {
        print("ConcreteClass1 says: Implemented Operation2\n")
    }

    func hook2() {
        print("ConcreteClass1 says: Overridden Hook2\n")
    }
}
