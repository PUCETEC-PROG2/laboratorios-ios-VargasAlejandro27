//
//  Profile.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct Profile: View {
    @StateObject private var viewModel = ProfileViewController()

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 12) {
                Text(viewModel.Profname.isEmpty ? "Cargando..." : viewModel.Profname)
                    .font(.title)
                    .bold()
                //avatar url
                if !viewModel.avatarUrl.isEmpty, let url = URL(string: viewModel.avatarUrl) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                } else {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                }
                 
        //nombre de ususario
                Text(viewModel.Profusername)
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 4)
                 
                // Biografía / Descripción
                Text(viewModel.Prodescrition ?? "Sin descripción")
                    .font(.body)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Perfil de usuario")
            .task {
                await viewModel.fetchProfile()
            }
        }
    }
}

#Preview {
    Profile()
}
