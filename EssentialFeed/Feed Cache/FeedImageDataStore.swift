//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 03/07/2023.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
