//
//  ConcreteClass2.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// Usually, concrete classes override only a fraction of base class'
/// operations.
class ConcreteClass2: AbstractProtocol {

    func requiredOperations1() {
        print("ConcreteClass2 says: Implemented Operation1\n")
    }

    func requiredOperation2() {
        print("ConcreteClass2 says: Implemented Operation2\n")
    }

    func hook1() {
        print("ConcreteClass2 says: Overridden Hook1\n")
    }
}
