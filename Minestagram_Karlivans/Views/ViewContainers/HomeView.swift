//
//  HomeView.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("minestagram")
                .font(.title2).bold()

            if let user = vm.user {
                Text("Vārds: \(user.name ?? "-")")
                Text("Uzņēmums: \(user.company ?? "-")")
                Text("Bio: \(user.bio ?? "-")")
                    .foregroundStyle(.secondary)
                    .padding(.top, 8)
            } else {
                Text("Ielādē...")
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

