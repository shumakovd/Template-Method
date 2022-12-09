//
//  MicrophoneAccessor.swift
//  Template Method
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation
import AVFoundation

class MicrophoneAccessor: PermissionAccessor {

    override func requestAccess(_ completion: @escaping Completion) {
        AVAudioSession.sharedInstance().requestRecordPermission { status in
            completion(status)
        }
    }

    override func hasAccess() -> Bool {
        return AVAudioSession.sharedInstance().recordPermission == .granted
    }

    override var description: String { return "Microphone" }
}
