//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 1/1/21.
//  
//

import Foundation

public enum LoadFeedResult {
	case success([FeedImage])
	case failure(Error)
}

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
