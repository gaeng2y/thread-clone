//
//  Thread.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/09/09.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        threadId ?? NSUUID().uuidString
    }
    
    var user: User?
}
