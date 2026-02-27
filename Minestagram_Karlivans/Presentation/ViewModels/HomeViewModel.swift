//
//  HomeViewModel.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import Foundation
import Combine
final class HomeViewModel: ObservableObject {
    @Published var user: User?

    private let userRepo: UserRepository

    init(userRepo: UserRepository = UserRepository()) {
        self.userRepo = userRepo
        load()
    }

    func load() {
        user = userRepo.getUser()
    }
}

