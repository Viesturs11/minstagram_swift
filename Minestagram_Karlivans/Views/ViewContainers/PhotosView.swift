//
//  PhotosView.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct PhotosView: View {
    @StateObject private var vm = PhotosViewModel()

    var body: some View {
        NavigationStack {
            List(vm.photos) { item in
                NavigationLink {
                    PhotosDetailView(photo: item)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(vmTitle())
                            .font(.headline)
                        Text("Photo: \(item.name ?? "-")")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 6)
                }
            }
            .navigationTitle("posts")
        }
    }

    private func vmTitle() -> String {
        // vienkārši, lai izskatās kā tavā piemērā ar albumu nosaukumu
        "Albus Percival Wulfric Brian Dumbledore"
    }
}

#Preview {
    PhotosView()
}

