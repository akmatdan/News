//
//  ViewController.swift
//  News
//
//  Created by Daniil Akmatov on 29/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.shared.getPosts { (posts) in
            guard let posts = posts else {
                return
            }
            print(posts.first?.title)
        }
    }
}

