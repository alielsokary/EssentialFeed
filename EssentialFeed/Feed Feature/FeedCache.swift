//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 02/08/2023.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
