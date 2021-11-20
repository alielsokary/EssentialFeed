//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 1/1/21.
//  
//

import Foundation

public struct FeedItem: Equatable {
	let uuid: String
	let description: String?
	let location: String?
	let imageURL: URL
}
