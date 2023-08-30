//
//  LoginViewModel.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/30.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(
            withEmail: email,
            password: password
        )
    }
}
