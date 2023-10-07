//
//  ImageCommentsPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Ali Elsokary on 08/10/2023.
//

import XCTest
import EssentialFeed

final class ImageCommentsPresenterTests: XCTestCase {
    
    func test_title_iSlocalized() {
        XCTAssertEqual(ImageCommentsPresenter.title, localized("IMAGE_COMMENTS_VIEW_TITLE"))
    }
    
    // MARK: - Helpers
    
    private func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
        let table: String = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }

}
