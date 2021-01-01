//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 1/1/21.
//  
//

import Foundation

enum LoadFeedResult {
	case success([FeedItem])
	case error(Error)
}
protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
