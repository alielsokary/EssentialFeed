//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 29/06/2023.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
