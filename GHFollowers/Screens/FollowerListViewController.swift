//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by Shihchiao Chao on 1/6/20.
//  Copyright © 2020 Shihchiao Chao. All rights reserved.
//

import UIKit

class FollowerListViewController: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
