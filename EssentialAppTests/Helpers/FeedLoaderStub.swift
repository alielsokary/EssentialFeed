//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Ali Elsokary on 01/08/2023.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
