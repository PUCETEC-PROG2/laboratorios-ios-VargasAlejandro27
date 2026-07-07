//
//  Profile.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("Perfil de ususario")
            }
            .navigationTitle("Perfil de usario")
            .navigationBarTitleDisplayMode( .inline )
        }
    }
}
#Preview {
    RepoForm()
}
