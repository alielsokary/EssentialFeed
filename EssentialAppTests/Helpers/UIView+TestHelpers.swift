//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Ali Elsokary on 04/08/2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
