//
//  NetworkManager.swift
//  News
//
//  Created by Daniil Akmatov on 29/11/22.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    func getPosts(completion: @escaping ([Posts]?) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/posts"
     
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else {
                return
            }

            do {
                let posts = try JSONDecoder().decode([Posts].self, from: data)
                print(posts.first?.title)
            } catch {
                print(error)
            }
        }.resume()
    }
}
