//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Ali Elsokary on 26/06/2023.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
