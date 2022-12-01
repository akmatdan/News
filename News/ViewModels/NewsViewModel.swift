//
//  NewsViewModel.swift
//  News
//
//  Created by Daniil Akmatov on 1/12/22.
//

import Foundation

struct NewsViewModel {
    let post: Posts
    
    var title: String {
        return post.title ?? "Unknown"
    }
    
    var description: String {
        return post.body ?? "Unknown"
    }
    
    
}
