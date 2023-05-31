//
//  UIRefreshControl+TestHelpers.swift .swift
//  EssentialFeediOSTests
//
//  Created by Ali Elsokary on 31/05/2023.
//  
//

import UIKit

extension UIRefreshControl {
	func simulatePullToRefresh() {
		allTargets.forEach({ target in
			actions(forTarget: target, forControlEvent: .valueChanged)?.forEach({
				(target as NSObject).perform(Selector($0))
			})
		})
	}
}

