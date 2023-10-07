//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 08/10/2023.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        return NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                                 tableName: "ImageComments", bundle: Bundle(for: Self.self), comment: "Title for the image comments view")
    }
}
