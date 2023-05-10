//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 04/04/2023.
//  
//

import Foundation

 struct RemoteFeedItem: Decodable {
	 let id: UUID
	 let description: String?
	 let location: String?
	 let image: URL
}
