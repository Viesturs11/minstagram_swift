//
//  User.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let avatarURL: String?
    let name: String?
    let company: String?
    let bio: String?

    enum CodingKeys: String, CodingKey {
        case id
        case avatarURL = "avatar_url"
        case name, company, bio
    }
}

