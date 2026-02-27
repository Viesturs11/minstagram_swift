//
//  PhotosDetailView.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct PhotosDetailView: View {
    let photo: GHContent

    var body: some View {
        VStack {
            Text(photo.name ?? "-")
                .font(.title3)
            Spacer()
        }
        .padding()
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PhotosDetailView(photo: GHContent(name: "Te-bus-foto-44"))
    }
}
