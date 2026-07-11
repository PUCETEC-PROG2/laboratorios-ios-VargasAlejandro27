//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName : String = ""
    @State private var repoDescriptcion : String = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                TextField("", text: $repoName,
                          prompt: Text("Nombre del repositorio").foregroundStyle(.black.opacity(0.4))
                ).textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                
                TextField("", text: $repoDescriptcion,
                          prompt: Text("Descrripcion de repostitorio").foregroundStyle(.black.opacity(0.4))
                ).textFieldStyle(.roundedBorder)
                    .lineLimit(3...6)
                    .padding(.vertical)
                Spacer()
                //Canclar Boton
                HStack{
                    Button(action: {
                        print("Boton precionar")
                    }){
                        Label("Cancelar" ,systemImage: "xmark.circle")
                            .padding(.all, 4)
                            .foregroundStyle(.red)
                    }
                    .buttonStyle(.bordered)
                    .padding(.horizontal,4)
                    
                    //Boton guardar
                    Button(action: {
                        print("Boton precionar")
                    }){
                        Label("guardar" ,systemImage: "square.and.arrow.down")
                            .padding(.all, 4)
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                .navigationTitle("formulario de Repositorio")
                .navigationBarTitleDisplayMode( .inline )
            }
        }
    }
    }

#Preview {
    RepoForm()
}

