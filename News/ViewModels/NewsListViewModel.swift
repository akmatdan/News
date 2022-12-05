//
//  NewsListViewModel.swift
//  News
//
//  Created by Daniil Akmatov on 1/12/22.
//

import Foundation

class NewsListViewModel {
    var newsVM = [NewsViewModel]()
    
    let reuseID = "news"
    
    func getNews(complition: @escaping ([NewsViewModel]) -> Void) {
        NetworkManager.shared.getPosts { (news) in
            guard let news = news else { return }
            
            let newsVM = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                self.newsVM = newsVM
                complition(newsVM)
            }
        }
    }
}
