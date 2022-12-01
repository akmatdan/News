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
        
        NetworkManager.shared.getPosts { (news) in
            guard let news = news else {
                return
            }
            print(news[0].title ?? "No data")
        }
    }
}

