//
//  MapView.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct MapView: View {
    @StateObject private var vm = MapViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("geos")
                .font(.title2).bold()

            Text("Šeit vēlāk var būt karte / koordinātes.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    MapView()
}

