//
//  Untitled.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct VideosView: View {
    @StateObject private var vm = VideosViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("reels")
                .font(.title2).bold()

            List(vm.videos) { item in
                Text(item.name ?? "-")
            }
        }
        .padding(.top, 8)
    }
}

#Preview {
    VideosView()
}

