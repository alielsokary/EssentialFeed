//
//  FeedViewControllerTests+LoaderSpy.swift .swift
//  EssentialFeediOSTests
//
//  Created by Ali Elsokary on 31/05/2023.
//  
//

import Foundation
import EssentialFeed
import EssentialFeediOS
import Combine

extension FeedUIIntegrationTests {

	class LoaderSpy: FeedImageDataLoader {
		
		// MARK: - FeedLoader
		
		private var feedRequests = [PassthroughSubject<Paginated<FeedImage>, Error>]()
		
		var loadFeedCallCount: Int {
			return feedRequests.count
		}
        
        var loadMoreCallCount: Int = 0
        
        
        func loadPublisher() -> AnyPublisher<Paginated<FeedImage>, Error> {
            let publisher = PassthroughSubject<Paginated<FeedImage>, Error>()
            feedRequests.append(publisher)
            return publisher.eraseToAnyPublisher()
        }
		
        func completeFeedLoading(with feed: [FeedImage] = [], at index: Int = 0) {
            feedRequests[index].send(Paginated(items: feed, loadMore: { [weak self] _ in
                self?.loadMoreCallCount += 1
            }))
        }
		
		func completeFeedLoadingWithError(at index: Int = 0) {
			let error = NSError(domain: "an error", code: 0)
            feedRequests[index].send(completion: .failure(error))
		}
		
		// MARK: - FeedImageDataLoader
		
		private struct TaskSpy: FeedImageDataLoaderTask {
			let cancelCallback: () -> Void
			func cancel() {
				cancelCallback()
			}
		}
		
		private var imageRequets = [(url: URL, completion: (FeedImageDataLoader.Result) -> Void)]()
		
		var loadedImageURLs: [URL] {
			return imageRequets.map { $0.url }
		}
		
		private(set) var cancelledImageURLs = [URL]()
		
		func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
			imageRequets.append((url, completion))
			return TaskSpy { [weak self] in self?.cancelledImageURLs.append(url) }
		}
		
		func completeImageLoading(with imageData: Data = Data(), at index: Int = 0) {
			imageRequets[index].completion(.success(imageData))
		}
		
		func completeImageLoadingWithError(at index: Int = 0) {
			let errpr = NSError(domain: "an error", code: 0)
			imageRequets[index].completion(.failure(errpr))
		}
	}
}
