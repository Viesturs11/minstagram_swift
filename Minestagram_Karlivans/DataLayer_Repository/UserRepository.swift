//
//  Untitled.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//

import Foundation

final class UserRepository {

    // uzdevumā bildē bija: func getUser() -> User
    // bet slaidā labajā pusē bija -> User?
    // es lieku drošāko variantu -> User (vienmēr atgriež)
    func getUser() -> User {
        User(
            id: 63356850,
            avatarURL: "https://picsum.photos/128/128",
            name: "Albus Percival Wulfric Brian Dumbledore",
            company: "Hogwarts School of Witchcraft and Wizardry",
            bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae sapien ante. Curabitur bibendum a nibh id aliquam. Nam in ante eu neque dictum egestas a id velit."
        )
    }
}
