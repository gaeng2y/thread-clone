//
//  ThreadService.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/09/11.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct ThreadService {
    static func uploadThread(with thread: Thread) async throws {
        guard let threadData = try? Firestore.Encoder().encode(thread) else { return }
        try await Firestore.firestore().collection("threads").addDocument(data: threadData)
    }
}
