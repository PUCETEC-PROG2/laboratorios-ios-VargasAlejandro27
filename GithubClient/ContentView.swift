//
//  ContentView.swift
//  GithubClient
//
//  Created by Usuario invitado on 13/1/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RepoList()
                .tabItem {
                    Label("Repositorios", systemImage: "arrow.triangle.branch")
                }
            
            RepoForm()
                .tabItem {
                    Label("Crear", systemImage: "plus.circle.fill")
                }
            
            Profile()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
