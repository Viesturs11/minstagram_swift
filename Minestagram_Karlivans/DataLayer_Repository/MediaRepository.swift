//
//  MediaRepository.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import Foundation

final class MediaRepository {

    // uzdevumā: func getPhotos() -> [GHContent]
    func getPhotos() -> [GHContent] {
        (1...25).map { _ in
            GHContent(name: "Te-bus-foto-\(Int.random(in: 1..<100))")
        }
    }

    func getVideos() -> [GHContent] {
        (1...12).map { _ in
            GHContent(name: "Te-bus-video-\(Int.random(in: 1..<100))")
        }
    }
}

