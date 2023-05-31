//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Ali Elsokary on 31/05/2023.
//  
//

import UIKit

extension UIButton {
	func simulateTap() {
		simulate(event: .valueChanged)
	}
}
