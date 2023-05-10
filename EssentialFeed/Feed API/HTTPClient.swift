//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 21/11/2021.
//  
//

import Foundation

public protocol HTTPClient {
	typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>

	/// The completion handler can be invoked in any thread.
	/// Clients are responsible to dispatch to appropriate threads, if needed.
	func get(from url : URL, completion: @escaping (Result) -> Void)
}
