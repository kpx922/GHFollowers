//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Shihchiao Chao on 2/2/20.
//  Copyright © 2020 Shihchiao Chao. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
