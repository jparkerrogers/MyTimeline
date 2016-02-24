//
//  PostController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/24/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    static func fetchTimeLineForUser(user: User, completion: (posts: [Post]) -> Void) {
        
    }
    
    static func addPost(image: UIImage, caption: String?, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    
    static func postFromIdentifier(identifier: String, completion: (post: Post?) -> Void) {
        
    }
    
    static func postsForUser(user: User, completion: (posts: [Post]?) -> Void) {
        
    }
    
    static func deletePost(post: Post) {
        
    }
    
    static func addCommentTextWithPost(string: String, post: Post, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    
    static func deleteComment(comment: Comment, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    
    static func addLikeToPost(post: Post, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    
    static func deleteLike(like: Like, completion: (success: Bool, post: Post?) -> Void) {
        
    }
    
    static func orderPosts(posts: [Post]) -> [Post] {
        return []
    }
    
    static func mockPosts() -> [Post] {
        let post1 = Post(imageEndPoint: "Somewhere", caption: "Check out this photo", userName: "thiguy", comments: <#T##[Comment]#>, likes: <#T##[Like]#>, identifier: <#T##String?#>)
        return
    }
    
}










