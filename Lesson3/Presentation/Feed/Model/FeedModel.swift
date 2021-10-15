//
//  FeedModel.swift
//  Lesson3
//
//  Created by Ильдар Арсламбеков on 13.10.2021.
//

import Foundation
import UIKit
class FeedModel {
    
    //MARK: - Properties
    var dataServive = DataService()
    final var posts: [Post] = []
    weak var delegate: FeedModelDelegate?
    
    //MARK: - init
    init(delegate: FeedModelDelegate) {
        self.delegate = delegate
    }
    
    //MARK: - Public functions
    public func requireData() {
        dataServive.requireArrayOfPosts(completion: { posts in
            self.posts = posts
            self.delegate?.dataUpdated()
        })
    }
}
