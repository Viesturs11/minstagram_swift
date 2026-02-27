//
//  VideosViewModel.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//

import Foundation
import Combine
final class VideosViewModel: ObservableObject {
    @Published var videos: [GHContent] = []

    private let mediaRepo: MediaRepository

    init(mediaRepo: MediaRepository = MediaRepository()) {
        self.mediaRepo = mediaRepo
        load()
    }

    func load() {
        videos = mediaRepo.getVideos()
    }
}

