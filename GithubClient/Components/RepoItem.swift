//
//  RepoItem.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(uiImage: .githubLogo)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(8) // Un toque estético opcional
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Nombre del repositorio")
                    .font(.title2)
                    .bold()
                Text("Lorem Ipsum dolor descripción del repositorio")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                HStack {
                    Text("Lenguaje")
                        .font(.caption)
                    Spacer()
                    Text("Swift")
                        .font(.caption)
                        .bold()
                }
                .padding(.top, 5)
            }
        }
        .padding()
    }
}

#Preview {
    RepoItem()
}
