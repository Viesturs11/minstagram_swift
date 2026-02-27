//
//  RootTabView.swift
//  Minestagram_Karlivans
//
//  Created by Viesturs Karlivans on 16/02/2026.
//
import SwiftUI

struct RootTabView: View {

    enum Tab {
        case home, photos, videos, map
    }

    @State private var activeTab: Tab = .home

    var body: some View {
        TabView(selection: $activeTab) {

            HomeView()
                .tabItem { Label("", systemImage: "person.fill") }
                .tag(Tab.home)

            PhotosView()
                .tabItem { Label("", systemImage: "photo") }
                .tag(Tab.photos)

            VideosView()
                .tabItem { Label("", systemImage: "video.fill") }
                .tag(Tab.videos)

            MapView()
                .tabItem { Label("", systemImage: "map.fill") }
                .tag(Tab.map)
        }
    }
}

#Preview {
    RootTabView()
}

