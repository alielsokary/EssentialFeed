//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 29/06/2023.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
