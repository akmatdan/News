//
//  News.swift
//  News
//
//  Created by Daniil Akmatov on 29/11/22.
//

import Foundation

struct Posts: Decodable {
    let userID: Int?
    let id: Int?
    let title: String?
    let body: String?
}

struct Comments: Decodable {
    let postId: Int?
    let id: Int?
    let name: String?
    let body: String?
}

struct Users: Decodable {
    let id: Int?
    let name: String?
    let phone: Int?
}
