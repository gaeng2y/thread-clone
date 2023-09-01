//
//  ProfileViewModel.swift
//  threads
//
//  Created by Kyeongmo Yang on 2023/08/31.
//

import Combine
import Foundation

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscriber()
    }
    
    private func setupSubscriber() {
        UserService.shared.$currentUser
            .sink { [weak self] user in
                self?.currentUser = user
                print("DEBUG: User in view model from combine is \(user)")
            }
            .store(in: &cancellables)
        
    }
}
