//
//  DeveloperPreview.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/09/04.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Kyeongmo Yang", email: "fover32@gmail.com", username: "gaeng2y")
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes: 0)
}
