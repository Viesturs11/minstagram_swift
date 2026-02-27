//
//  PhotosViewModel.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import Foundation
import Combine

final class PhotosViewModel: ObservableObject {
    @Published var photos: [GHContent] = []

    private let mediaRepo: MediaRepository

    init(mediaRepo: MediaRepository = MediaRepository()) {
        self.mediaRepo = mediaRepo
        load()
    }

    func load() {
        photos = mediaRepo.getPhotos()
    }
}

