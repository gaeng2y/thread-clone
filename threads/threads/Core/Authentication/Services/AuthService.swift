//
//  AuthService.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/29.
//

import Firebase
import Foundation

class AuthService {
    static let shared = AuthService()
    
    private init() { }
    
    @MainActor
    func login(
        withEmail email: String,
        password: String
    ) async throws {
        
    }
    
    @MainActor
    func createUser(
        withEmail email: String,
        password: String,
        fullname: String,
        username: String
    ) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
}
