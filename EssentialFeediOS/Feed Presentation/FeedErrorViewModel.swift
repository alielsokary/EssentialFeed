//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Ali Elsokary on 26/06/2023.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
