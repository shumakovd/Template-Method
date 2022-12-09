//
//  PhotoLibraryAccessor.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Photos
import Foundation

class PhotoLibraryAccessor: PermissionAccessor {

    override func requestAccess(_ completion: @escaping Completion) {
        PHPhotoLibrary.requestAuthorization { status in
            completion(status == .authorized)
        }
    }

    override func hasAccess() -> Bool {
        return PHPhotoLibrary.authorizationStatus() == .authorized
    }

    override var description: String { return "PhotoLibrary" }

    override func didReceiveAccess() {
        /// We want to track how many people give access to the PhotoLibrary.
        print("PhotoLibrary Accessor: Receive access. Updating analytics...")
    }

    override func didRejectAccess() {
        /// ... and also we want to track how many people rejected access.
        print("PhotoLibrary Accessor: Rejected with access. Updating analytics...")
    }
}
