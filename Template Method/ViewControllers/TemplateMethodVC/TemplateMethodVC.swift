//
//  TemplateMethodVC.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit
import Foundation

class TemplateMethodVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTemplateMethodConcept()
        testTemplateMethodForExample()
    }
    
    // MARK: - Methods
    
    func testTemplateMethodConcept() {
        print("Same client code can work with different subclasses:\n")
        Client.clientCode(use: ConcreteClass1())
        
        print("\nSame client code can work with different subclasses:\n")
        Client.clientCode(use: ConcreteClass2())
    }
    
    func testTemplateMethodForExample() {
        let accessors = [CameraAccessor(), MicrophoneAccessor(), PhotoLibraryAccessor()]
        
        accessors.forEach { item in
            item.requestAccessIfNeeded({ status in
                let message = status ? "You have access to " : "You do not have access to "
                print(message + item.description + "\n")
            })
        }
    }
    
}
