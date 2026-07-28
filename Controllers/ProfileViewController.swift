//
//  ProfileViewController.swift
//  GithubClient
//
//  Created by Usuario invitado on 28/7/26.
//
import Foundation

@MainActor
class ProfileViewController: ObservableObject {
    @Published var Profusername: String = ""
    @Published var Profname: String = ""
    @Published var Prodescrition: String? = ""
    @Published var avatarUrl: String = ""
    
    private let githubService: Githubservice
    
    init(githubService: Githubservice = .shared) {
        self.githubService = githubService
    }
    
    func fetchProfile() async {
        do {
            let userInfo = try await githubService.getProfile()
            
            self.Profusername = userInfo.login
            self.Profname = userInfo.name ?? ""
            self.Prodescrition = userInfo.bio
            self.avatarUrl = userInfo.avatarUrl
            
        } catch {
            print("=== Error fetching profile ===")
            print(error)
        }
    }
}
