//
//  UserService.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/31.
//

import Firebase
import FirebaseFirestoreSwift
import Foundation

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        do {
            guard let uid = Auth.auth().currentUser?.uid else { return }
            let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
            let user = try snapshot.data(as: User.self)
            self.currentUser = user
            
            print("DEBUG: User is \(user)")
        }
    }
    
    func reset() {
        self.currentUser = nil
    }
}
